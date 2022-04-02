// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

  _BadNetwork badNetwork() {
    return const _BadNetwork();
  }

  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }

  _InternalServerError internalServerError() {
    return const _InternalServerError();
  }

  _ServerError serverError(
      {int? statusCode, String? statusMessage, dynamic responseData}) {
    return _ServerError(
      statusCode: statusCode,
      statusMessage: statusMessage,
      responseData: responseData,
    );
  }
}

/// @nodoc
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badNetwork,
    required TResult Function() unauthorized,
    required TResult Function() internalServerError,
    required TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)
        serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadNetwork value) badNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

/// @nodoc
abstract class _$BadNetworkCopyWith<$Res> {
  factory _$BadNetworkCopyWith(
          _BadNetwork value, $Res Function(_BadNetwork) then) =
      __$BadNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$BadNetworkCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$BadNetworkCopyWith<$Res> {
  __$BadNetworkCopyWithImpl(
      _BadNetwork _value, $Res Function(_BadNetwork) _then)
      : super(_value, (v) => _then(v as _BadNetwork));

  @override
  _BadNetwork get _value => super._value as _BadNetwork;
}

/// @nodoc

class _$_BadNetwork implements _BadNetwork {
  const _$_BadNetwork();

  @override
  String toString() {
    return 'ApiFailure.badNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BadNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badNetwork,
    required TResult Function() unauthorized,
    required TResult Function() internalServerError,
    required TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)
        serverError,
  }) {
    return badNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
  }) {
    return badNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
    required TResult orElse(),
  }) {
    if (badNetwork != null) {
      return badNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadNetwork value) badNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return badNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
  }) {
    return badNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (badNetwork != null) {
      return badNetwork(this);
    }
    return orElse();
  }
}

abstract class _BadNetwork implements ApiFailure {
  const factory _BadNetwork() = _$_BadNetwork;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'ApiFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badNetwork,
    required TResult Function() unauthorized,
    required TResult Function() internalServerError,
    required TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)
        serverError,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadNetwork value) badNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ApiFailure {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$InternalServerErrorCopyWith<$Res> {
  factory _$InternalServerErrorCopyWith(_InternalServerError value,
          $Res Function(_InternalServerError) then) =
      __$InternalServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternalServerErrorCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$InternalServerErrorCopyWith<$Res> {
  __$InternalServerErrorCopyWithImpl(
      _InternalServerError _value, $Res Function(_InternalServerError) _then)
      : super(_value, (v) => _then(v as _InternalServerError));

  @override
  _InternalServerError get _value => super._value as _InternalServerError;
}

/// @nodoc

class _$_InternalServerError implements _InternalServerError {
  const _$_InternalServerError();

  @override
  String toString() {
    return 'ApiFailure.internalServerError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badNetwork,
    required TResult Function() unauthorized,
    required TResult Function() internalServerError,
    required TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)
        serverError,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadNetwork value) badNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError implements ApiFailure {
  const factory _InternalServerError() = _$_InternalServerError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? statusMessage, dynamic responseData});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? responseData = freezed,
  }) {
    return _then(_ServerError(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseData: responseData == freezed
          ? _value.responseData
          : responseData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(
      {this.statusCode, this.statusMessage, this.responseData});

  @override
  final int? statusCode;
  @override
  final String? statusMessage;
  @override
  final dynamic responseData;

  @override
  String toString() {
    return 'ApiFailure.serverError(statusCode: $statusCode, statusMessage: $statusMessage, responseData: $responseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality()
                .equals(other.statusMessage, statusMessage) &&
            const DeepCollectionEquality()
                .equals(other.responseData, responseData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(statusMessage),
      const DeepCollectionEquality().hash(responseData));

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badNetwork,
    required TResult Function() unauthorized,
    required TResult Function() internalServerError,
    required TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)
        serverError,
  }) {
    return serverError(statusCode, statusMessage, responseData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
  }) {
    return serverError?.call(statusCode, statusMessage, responseData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badNetwork,
    TResult Function()? unauthorized,
    TResult Function()? internalServerError,
    TResult Function(
            int? statusCode, String? statusMessage, dynamic responseData)?
        serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode, statusMessage, responseData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadNetwork value) badNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadNetwork value)? badNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ApiFailure {
  const factory _ServerError(
      {int? statusCode,
      String? statusMessage,
      dynamic responseData}) = _$_ServerError;

  int? get statusCode;
  String? get statusMessage;
  dynamic get responseData;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
