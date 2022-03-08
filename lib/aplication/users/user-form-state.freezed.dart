// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user-form-state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

  _UserFormState call(
      {required Name name,
      required Password password,
      String role = Role.CASHIER,
      bool loading = false,
      bool showErrors = false,
      Option<Either<UserFailure, User>> failureOrSuccessOption =
          const None()}) {
    return _UserFormState(
      name: name,
      password: password,
      role: role,
      loading: loading,
      showErrors: showErrors,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  Name get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<UserFailure, User>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      Password password,
      String role,
      bool loading,
      bool showErrors,
      Option<Either<UserFailure, User>> failureOrSuccessOption});
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? loading = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, User>>,
    ));
  }
}

/// @nodoc
abstract class _$UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserFormStateCopyWith(
          _UserFormState value, $Res Function(_UserFormState) then) =
      __$UserFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      Password password,
      String role,
      bool loading,
      bool showErrors,
      Option<Either<UserFailure, User>> failureOrSuccessOption});
}

/// @nodoc
class __$UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserFormStateCopyWith<$Res> {
  __$UserFormStateCopyWithImpl(
      _UserFormState _value, $Res Function(_UserFormState) _then)
      : super(_value, (v) => _then(v as _UserFormState));

  @override
  _UserFormState get _value => super._value as _UserFormState;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? loading = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_UserFormState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, User>>,
    ));
  }
}

/// @nodoc

class _$_UserFormState extends _UserFormState {
  _$_UserFormState(
      {required this.name,
      required this.password,
      this.role = Role.CASHIER,
      this.loading = false,
      this.showErrors = false,
      this.failureOrSuccessOption = const None()})
      : super._();

  @override
  final Name name;
  @override
  final Password password;
  @JsonKey(defaultValue: Role.CASHIER)
  @override
  final String role;
  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @JsonKey(defaultValue: false)
  @override
  final bool showErrors;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<UserFailure, User>> failureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(name: $name, password: $password, role: $role, loading: $loading, showErrors: $showErrors, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.showErrors, showErrors) ||
                const DeepCollectionEquality()
                    .equals(other.showErrors, showErrors)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      __$UserFormStateCopyWithImpl<_UserFormState>(this, _$identity);
}

abstract class _UserFormState extends UserFormState {
  factory _UserFormState(
          {required Name name,
          required Password password,
          String role,
          bool loading,
          bool showErrors,
          Option<Either<UserFailure, User>> failureOrSuccessOption}) =
      _$_UserFormState;
  _UserFormState._() : super._();

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  Option<Either<UserFailure, User>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
