import 'package:freezed_annotation/freezed_annotation.dart';

part 'user-failures.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unexpectedFailure() = UnexpectedFailure;
  const factory UserFailure.userAlreadyExists() = UserAlreadyExists;
}
