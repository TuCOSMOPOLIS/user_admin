// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user-failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFailureTearOff {
  const _$UserFailureTearOff();

  UnexpectedFailure unexpectedFailure() {
    return const UnexpectedFailure();
  }

  UserAlreadyExists userAlreadyExists() {
    return const UserAlreadyExists();
  }

  SameUser sameUser() {
    return const SameUser();
  }
}

/// @nodoc
const $UserFailure = _$UserFailureTearOff();

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() userAlreadyExists,
    required TResult Function() sameUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? userAlreadyExists,
    TResult Function()? sameUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(SameUser value) sameUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(SameUser value)? sameUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res> implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  final UserFailure _value;
  // ignore: unused_field
  final $Res Function(UserFailure) _then;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(
      UnexpectedFailure _value, $Res Function(UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedFailure));

  @override
  UnexpectedFailure get _value => super._value as UnexpectedFailure;
}

/// @nodoc

class _$UnexpectedFailure implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString() {
    return 'UserFailure.unexpectedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() userAlreadyExists,
    required TResult Function() sameUser,
  }) {
    return unexpectedFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? userAlreadyExists,
    TResult Function()? sameUser,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(SameUser value) sameUser,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(SameUser value)? sameUser,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements UserFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}

/// @nodoc
abstract class $UserAlreadyExistsCopyWith<$Res> {
  factory $UserAlreadyExistsCopyWith(
          UserAlreadyExists value, $Res Function(UserAlreadyExists) then) =
      _$UserAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserAlreadyExistsCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res>
    implements $UserAlreadyExistsCopyWith<$Res> {
  _$UserAlreadyExistsCopyWithImpl(
      UserAlreadyExists _value, $Res Function(UserAlreadyExists) _then)
      : super(_value, (v) => _then(v as UserAlreadyExists));

  @override
  UserAlreadyExists get _value => super._value as UserAlreadyExists;
}

/// @nodoc

class _$UserAlreadyExists implements UserAlreadyExists {
  const _$UserAlreadyExists();

  @override
  String toString() {
    return 'UserFailure.userAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() userAlreadyExists,
    required TResult Function() sameUser,
  }) {
    return userAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? userAlreadyExists,
    TResult Function()? sameUser,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(SameUser value) sameUser,
  }) {
    return userAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(SameUser value)? sameUser,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyExists implements UserFailure {
  const factory UserAlreadyExists() = _$UserAlreadyExists;
}

/// @nodoc
abstract class $SameUserCopyWith<$Res> {
  factory $SameUserCopyWith(SameUser value, $Res Function(SameUser) then) =
      _$SameUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$SameUserCopyWithImpl<$Res> extends _$UserFailureCopyWithImpl<$Res>
    implements $SameUserCopyWith<$Res> {
  _$SameUserCopyWithImpl(SameUser _value, $Res Function(SameUser) _then)
      : super(_value, (v) => _then(v as SameUser));

  @override
  SameUser get _value => super._value as SameUser;
}

/// @nodoc

class _$SameUser implements SameUser {
  const _$SameUser();

  @override
  String toString() {
    return 'UserFailure.sameUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SameUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedFailure,
    required TResult Function() userAlreadyExists,
    required TResult Function() sameUser,
  }) {
    return sameUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedFailure,
    TResult Function()? userAlreadyExists,
    TResult Function()? sameUser,
    required TResult orElse(),
  }) {
    if (sameUser != null) {
      return sameUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(SameUser value) sameUser,
  }) {
    return sameUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(SameUser value)? sameUser,
    required TResult orElse(),
  }) {
    if (sameUser != null) {
      return sameUser(this);
    }
    return orElse();
  }
}

abstract class SameUser implements UserFailure {
  const factory SameUser() = _$SameUser;
}
