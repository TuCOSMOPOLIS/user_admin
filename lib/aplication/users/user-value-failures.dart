import 'package:freezed_annotation/freezed_annotation.dart';

part 'user-value-failures.freezed.dart';

@freezed
class UserValueFailure<T> with _$UserValueFailure<T> {
  const factory UserValueFailure.invalidName(T failedValue) = InvalidName;
  const factory UserValueFailure.invalidPassword(T failedValue) =
      InvalidPassword;
}
