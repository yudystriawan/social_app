import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_social_app/domain/follow/follow_failure.dart';
import 'package:my_social_app/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:my_social_app/domain/follow/i_follow_repository.dart';
import 'package:my_social_app/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@Injectable(as: IFollowRepository)
class FollowRepository implements IFollowRepository {
  final FirebaseFirestore _firestore;

  FollowRepository(this._firestore);

  @override
  Future<Either<FollowFailure, bool>> toggleFollow({
    @required StringSingleLine userId,
    @required bool isFollowing,
  }) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final followerDoc = await _firestore.followerDocument(userId.getOrCrash());
    final followingDoc = await _firestore.followingDocument(currentUser?.uid);

    try {
      if (isFollowing) {
        //remove current user from their follower
        await followerDoc.userFollowerCollection
            .doc(currentUser?.uid)
            .get()
            .then((doc) {
          if (doc.exists) {
            doc.reference.delete();
          }
        });

        //remove user from this current user following
        await followingDoc.userFollowingCollection
            .doc(userId.getOrCrash())
            .get()
            .then((doc) {
          if (doc.exists) {
            doc.reference.delete();
          }
        });
      } else {
        //add current user to their follower colloction
        await followerDoc.userFollowerCollection.doc(currentUser?.uid).set({});

        // add this user to my following collection
        await followingDoc.userFollowingCollection
            .doc(userId.getOrCrash())
            .set({});

        // final isFollow = false
      }

      return right(!isFollowing);
    } catch (e) {
      log('error', name: 'toggleFollow', error: e);
      return left(const FollowFailure.unexpected());
    }
  }

  @override
  Stream<Either<FollowFailure, bool>> checkFollowUser(
      StringSingleLine userId) async* {
    final currentUser = FirebaseAuth.instance.currentUser;
    final followerDoc = await _firestore.followerDocument(userId.getOrCrash());

    yield* followerDoc.userFollowerCollection
        .doc(currentUser?.uid)
        .snapshots()
        .map((doc) => right<FollowFailure, bool>(doc.exists))
        .onErrorReturnWith((error) {
      log('error', name: 'checkFollowUser', error: error);
      return left(const FollowFailure.unexpected());
    });
  }

  @override
  Stream<Either<FollowFailure, int>> fetchFollowerCount(
      StringSingleLine userId) async* {
    yield* _firestore
        .getFollowerCount(userId.getOrCrash())
        .map((snapshot) => right<FollowFailure, int>(snapshot.docs.length))
        .onErrorReturnWith((error) {
      log('error', name: 'fetchFollowerCount', error: error);
      return left(const FollowFailure.unexpected());
    });
  }

  @override
  Stream<Either<FollowFailure, int>> fetchFollowingCount(
      StringSingleLine userId) async* {
    yield* _firestore
        .getFollowingCount(userId.getOrCrash())
        .map((snapshot) => right<FollowFailure, int>(snapshot.docs.length))
        .onErrorReturnWith((error) {
      log('error', name: 'fetchFollowingCount', error: error);
      return left(const FollowFailure.unexpected());
    });
  }

  @override
  Future<Either<FollowFailure, List<StringSingleLine>>> fetchFollowingUserIds(
      StringSingleLine userId) async {
    try {
      final followingSnapshot =
          await _firestore.fetchAllFollowingId(userId.getOrCrash());

      final userIds = followingSnapshot.docs
          .map((doc) => StringSingleLine(doc.id))
          .toList();

      return right(userIds);
    } catch (e) {
      log('error', name: 'fetchFollowingUserIds', error: e);
      return left(const FollowFailure.unexpected());
    }
  }
}
