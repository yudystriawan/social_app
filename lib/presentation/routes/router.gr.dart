// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/post/post.dart';
import '../../domain/user/user.dart';
import '../pages/comment/comment_page.dart';
import '../pages/home/home_page.dart';
import '../pages/posts/detail/post_detail_page.dart';
import '../pages/posts/form/post_form_page.dart';
import '../pages/profile/edit/edit_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String editProfilePage = '/edit-profile-page';
  static const String postFormPage = '/post-form-page';
  static const String commentPage = '/comment-page';
  static const String postDetailPage = '/post-detail-page';
  static const String profilePage = '/profile-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    editProfilePage,
    postFormPage,
    commentPage,
    postDetailPage,
    profilePage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.editProfilePage, page: EditProfilePage),
    RouteDef(Routes.postFormPage, page: PostFormPage),
    RouteDef(Routes.commentPage, page: CommentPage),
    RouteDef(Routes.postDetailPage, page: PostDetailPage),
    RouteDef(Routes.profilePage, page: ProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const SignInPage().wrappedRoute(context),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
    EditProfilePage: (data) {
      final args = data.getArgs<EditProfilePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EditProfilePage(
          key: args.key,
          editedUser: args.editedUser,
          isFirstEdit: args.isFirstEdit,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    PostFormPage: (data) {
      final args = data.getArgs<PostFormPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PostFormPage(
          key: args.key,
          post: args.post,
          userId: args.userId,
          imageFile: args.imageFile,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CommentPage: (data) {
      final args = data.getArgs<CommentPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CommentPage(
          key: args.key,
          post: args.post,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    PostDetailPage: (data) {
      final args = data.getArgs<PostDetailPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PostDetailPage(
          key: args.key,
          userId: args.userId,
          postId: args.postId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    ProfilePage: (data) {
      final args = data.getArgs<ProfilePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfilePage(
          key: args.key,
          userId: args.userId,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EditProfilePage arguments holder class
class EditProfilePageArguments {
  final Key key;
  final UserDomain editedUser;
  final bool isFirstEdit;
  EditProfilePageArguments(
      {this.key, @required this.editedUser, this.isFirstEdit = false});
}

/// PostFormPage arguments holder class
class PostFormPageArguments {
  final Key key;
  final PostDomain post;
  final String userId;
  final File imageFile;
  PostFormPageArguments(
      {this.key, @required this.post, @required this.userId, this.imageFile});
}

/// CommentPage arguments holder class
class CommentPageArguments {
  final Key key;
  final PostDomain post;
  CommentPageArguments({this.key, @required this.post});
}

/// PostDetailPage arguments holder class
class PostDetailPageArguments {
  final Key key;
  final StringSingleLine userId;
  final StringSingleLine postId;
  PostDetailPageArguments(
      {this.key, @required this.userId, @required this.postId});
}

/// ProfilePage arguments holder class
class ProfilePageArguments {
  final Key key;
  final String userId;
  ProfilePageArguments({this.key, @required this.userId});
}
