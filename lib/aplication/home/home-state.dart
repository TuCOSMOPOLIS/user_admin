import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_admin/models/user.dart';

part 'home-state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({required List<User> users}) = Loaded;
  const factory HomeState.error() = Error;
}
