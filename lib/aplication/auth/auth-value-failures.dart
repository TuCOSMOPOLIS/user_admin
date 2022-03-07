abstract class ValueFailure<T> {
  T get failedValue;
}

class InvalidUser extends ValueFailure<String> {
  final String failedValue;

  InvalidUser(this.failedValue);
}

class InvalidPassword extends ValueFailure<String> {
  final String failedValue;

  InvalidPassword(this.failedValue);
}
