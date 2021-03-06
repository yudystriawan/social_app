// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'application/comment/form/comment_form_bloc.dart';
import 'infrastructure/comment/comment_repository.dart';
import 'application/comment/watcher/comment_watcher_bloc.dart';
import 'infrastructure/feed/feed_repository.dart';
import 'application/feed/watcher/feed_watcher_bloc.dart';
import 'application/file/loader/file_loader_bloc.dart';
import 'infrastructure/file/file_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/follow/actor/follow_actor_bloc.dart';
import 'infrastructure/follow/follow_repository.dart';
import 'application/follow/watch/follow_watcher_bloc.dart';
import 'application/follow/follower_count/follower_count_watcher_bloc.dart';
import 'application/follow/following_count/following_count_watcher_bloc.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/comment/i_comment_repository.dart';
import 'domain/feed/i_feed_repository.dart';
import 'domain/file/i_file_repository.dart';
import 'domain/follow/i_follow_repository.dart';
import 'domain/post/i_post_repository.dart';
import 'domain/user/i_user_repository.dart';
import 'infrastructure/core/image_picker_injectable_module.dart';
import 'application/post/actor/post_actor_bloc.dart';
import 'application/post/by_user_watcher/post_by_user_watcher_bloc.dart';
import 'application/post/form/post_form_bloc.dart';
import 'infrastructure/post/post_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/post/single/bloc/single_post_watcher_bloc.dart';
import 'application/post/timeline_watcher/timeline_watcher_bloc.dart';
import 'application/user/form/user_form_bloc.dart';
import 'application/user/get_by_id/user_get_by_id_bloc.dart';
import 'infrastructure/user/user_repository.dart';
import 'application/user/search/user_search_bloc.dart';
import 'application/user/suggest/user_suggest_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final imagePickerInjectableModule = _$ImagePickerInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAuthRepository>(() => AuthRepository(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.factory<ICommentRepository>(
      () => CommentRepostiory(get<FirebaseFirestore>()));
  gh.factory<IFeedRepository>(() => FeedRepository(get<FirebaseFirestore>()));
  gh.factory<IFollowRepository>(
      () => FollowRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IPostRepository>(
      () => PostRepository(get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.factory<IUserRepository>(() => UserRepository(get<FirebaseFirestore>()));
  gh.factory<PostActorBloc>(() => PostActorBloc(
        get<IPostRepository>(),
        get<IFeedRepository>(),
        get<ICommentRepository>(),
      ));
  gh.factory<PostByUserWatcherBloc>(
      () => PostByUserWatcherBloc(get<IPostRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthRepository>()));
  gh.factory<SinglePostWatcherBloc>(
      () => SinglePostWatcherBloc(get<IPostRepository>()));
  gh.factory<TimelineWatcherBloc>(
      () => TimelineWatcherBloc(get<IPostRepository>()));
  gh.factory<UserFormBloc>(() => UserFormBloc(get<IUserRepository>()));
  gh.factory<UserGetByIdBloc>(() => UserGetByIdBloc(get<IUserRepository>()));
  gh.factory<UserSearchBloc>(() => UserSearchBloc(get<IUserRepository>()));
  gh.factory<UserSuggestBloc>(
      () => UserSuggestBloc(get<IUserRepository>(), get<IFollowRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepository>()));
  gh.factory<CommentFormBloc>(
      () => CommentFormBloc(get<ICommentRepository>(), get<IFeedRepository>()));
  gh.factory<CommentWatcherBloc>(
      () => CommentWatcherBloc(get<ICommentRepository>()));
  gh.factory<FeedWatcherBloc>(() => FeedWatcherBloc(get<IFeedRepository>()));
  gh.factory<FollowActorBloc>(
      () => FollowActorBloc(get<IFollowRepository>(), get<IFeedRepository>()));
  gh.factory<FollowWatcherBloc>(
      () => FollowWatcherBloc(get<IFollowRepository>()));
  gh.factory<FollowerCountWatcherBloc>(
      () => FollowerCountWatcherBloc(get<IFollowRepository>()));
  gh.factory<FollowingCountWatcherBloc>(
      () => FollowingCountWatcherBloc(get<IFollowRepository>()));
  gh.factory<IFileRepository>(
      () => FileRepositoy(get<ImagePicker>(), get<FirebaseStorage>()));
  gh.factory<PostFormBloc>(
      () => PostFormBloc(get<IPostRepository>(), get<IFileRepository>()));
  gh.factory<FileLoaderBloc>(() => FileLoaderBloc(get<IFileRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<ImagePicker>(imagePickerInjectableModule.imagePicker);
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$ImagePickerInjectableModule extends ImagePickerInjectableModule {}
