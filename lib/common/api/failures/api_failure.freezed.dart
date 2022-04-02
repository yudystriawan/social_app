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

  _UnexpectedFailure unexpectedFailure() {
    return const _UnexpectedFailure();
  }

  _ServerFailure serverFailure({int? code, String? errMessage}) {
    return _ServerFailure(
      code: code,
      errMessage: errMessage,
    );
  }

  _BadNetworkFailure badNetworkFailure() {
    return const _BadNetworkFailure();
  }

  _UnauthenticatedFailure unauthenticatedFailure() {
    return const _UnauthenticatedFailure();
  }
}

/// @nodoc
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function(int? code, String? errMessage) serverFailure,
    required TResult Function() badNetworkFailure,
    required TResult Function() unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function(int? code, String? errMessage)? serverFailure,
    TResult Function()? badNetworkFailure,
    TResult Function()? unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_BadNetworkFailure value) badNetworkFailure,
    required TResult Function(_UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_BadNetworkFailure value)? badNetworkFailure,
    TResult Function(_UnauthenticatedFailure value)? unauthenticatedFailure,
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
abstract class _$UnexpectedFailureCopyWith<$Res> {
  factory _$UnexpectedFailureCopyWith(
          _UnexpectedFailure value, $Res Function(_UnexpectedFailure) then) =
      __$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedFailureCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnexpectedFailureCopyWith<$Res> {
  __$UnexpectedFailureCopyWithImpl(
      _UnexpectedFailure _value, $Res Function(_UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as _UnexpectedFailure));

  @override
  _UnexpectedFailure get _value => super._value as _UnexpectedFailure;
}

/// @nodoc

class _$_UnexpectedFailure implements _UnexpectedFailure {
  const _$_UnexpectedFailure();

  @override
  String toString() {
    return 'ApiFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function(int? code, String? errMessage) serverFailure,
    required TResult Function() badNetworkFailure,
    required TResult Function() unauthenticatedFailure,
  }) {
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function(int? code, String? errMessage)? serverFailure,
    TResult Function()? badNetworkFailure,
    TResult Function()? unauthenticatedFailure,
  }) {
    return unexpectedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_BadNetworkFailure value) badNetworkFailure,
    required TResult Function(_UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_BadNetworkFailure value)? badNetworkFailure,
    TResult Function(_UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return unexpectedFailure?.call(this);
  }
}

abstract class _UnexpectedFailure implements ApiFailure {
  const factory _UnexpectedFailure() = _$_UnexpectedFailure;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  $Res call({int? code, String? errMessage});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object? code = freezed,
    Object? errMessage = freezed,
  }) {
    return _then(_ServerFailure(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      errMessage: errMessage == freezed
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure({this.code, this.errMessage});

  @override
  final int? code;
  @override
  final String? errMessage;

  @override
  String toString() {
    return 'ApiFailure.serverFailure(code: $code, errMessage: $errMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerFailure &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.errMessage, errMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(errMessage));

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function(int? code, String? errMessage) serverFailure,
    required TResult Function() badNetworkFailure,
    required TResult Function() unauthenticatedFailure,
  }) {
    return serverFailure(code, errMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function(int? code, String? errMessage)? serverFailure,
    TResult Function()? badNetworkFailure,
    TResult Function()? unauthenticatedFailure,
  }) {
    return serverFailure?.call(code, errMessage);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_BadNetworkFailure value) badNetworkFailure,
    required TResult Function(_UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_BadNetworkFailure value)? badNetworkFailure,
    TResult Function(_UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return serverFailure?.call(this);
  }
}

abstract class _ServerFailure implements ApiFailure {
  const factory _ServerFailure({int? code, String? errMessage}) =
      _$_ServerFailure;

  int? get code;
  String? get errMessage;
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BadNetworkFailureCopyWith<$Res> {
  factory _$BadNetworkFailureCopyWith(
          _BadNetworkFailure value, $Res Function(_BadNetworkFailure) then) =
      __$BadNetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$BadNetworkFailureCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$BadNetworkFailureCopyWith<$Res> {
  __$BadNetworkFailureCopyWithImpl(
      _BadNetworkFailure _value, $Res Function(_BadNetworkFailure) _then)
      : super(_value, (v) => _then(v as _BadNetworkFailure));

  @override
  _BadNetworkFailure get _value => super._value as _BadNetworkFailure;
}

/// @nodoc

class _$_BadNetworkFailure implements _BadNetworkFailure {
  const _$_BadNetworkFailure();

  @override
  String toString() {
    return 'ApiFailure.badNetworkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BadNetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function(int? code, String? errMessage) serverFailure,
    required TResult Function() badNetworkFailure,
    required TResult Function() unauthenticatedFailure,
  }) {
    return badNetworkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function(int? code, String? errMessage)? serverFailure,
    TResult Function()? badNetworkFailure,
    TResult Function()? unauthenticatedFailure,
  }) {
    return badNetworkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_BadNetworkFailure value) badNetworkFailure,
    required TResult Function(_UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return badNetworkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_BadNetworkFailure value)? badNetworkFailure,
    TResult Function(_UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return badNetworkFailure?.call(this);
  }
}

abstract class _BadNetworkFailure implements ApiFailure {
  const factory _BadNetworkFailure() = _$_BadNetworkFailure;
}

/// @nodoc
abstract class _$UnauthenticatedFailureCopyWith<$Res> {
  factory _$UnauthenticatedFailureCopyWith(_UnauthenticatedFailure value,
          $Res Function(_UnauthenticatedFailure) then) =
      __$UnauthenticatedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedFailureCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnauthenticatedFailureCopyWith<$Res> {
  __$UnauthenticatedFailureCopyWithImpl(_UnauthenticatedFailure _value,
      $Res Function(_UnauthenticatedFailure) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedFailure));

  @override
  _UnauthenticatedFailure get _value => super._value as _UnauthenticatedFailure;
}

/// @nodoc

class _$_UnauthenticatedFailure implements _UnauthenticatedFailure {
  const _$_UnauthenticatedFailure();

  @override
  String toString() {
    return 'ApiFailure.unauthenticatedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnauthenticatedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function(int? code, String? errMessage) serverFailure,
    required TResult Function() badNetworkFailure,
    required TResult Function() unauthenticatedFailure,
  }) {
    return unauthenticatedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function(int? code, String? errMessage)? serverFailure,
    TResult Function()? badNetworkFailure,
    TResult Function()? unauthenticatedFailure,
  }) {
    return unauthenticatedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_BadNetworkFailure value) badNetworkFailure,
    required TResult Function(_UnauthenticatedFailure value)
        unauthenticatedFailure,
  }) {
    return unauthenticatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_BadNetworkFailure value)? badNetworkFailure,
    TResult Function(_UnauthenticatedFailure value)? unauthenticatedFailure,
  }) {
    return unauthenticatedFailure?.call(this);
  }
}

abstract class _UnauthenticatedFailure implements ApiFailure {
  const factory _UnauthenticatedFailure() = _$_UnauthenticatedFailure;
}
