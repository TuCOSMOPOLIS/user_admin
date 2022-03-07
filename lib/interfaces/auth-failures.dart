class AuthFailure implements Exception {}

class UserNoExists extends AuthFailure {}

class WrongPassword extends AuthFailure {}

class UnexpectedFailure extends AuthFailure {}
