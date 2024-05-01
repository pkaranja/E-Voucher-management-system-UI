class RevokeTokenException implements Exception {
  final String message;

  RevokeTokenException({
    this.message = 'Token is invalid or expired.',
  });

  @override
  String toString() => 'RevokeTokenException: $message';
}

class AuthBlockedForUserException implements Exception {
  final String message;

  /// The duration for which the user is blocked.
  final Duration blockedDuration;

  AuthBlockedForUserException({
    required this.blockedDuration,
    this.message = '',
  });

  @override
  String toString() => 'AuthBlockedForUserException: $message, $blockedDuration';
}

class NetworkException implements Exception {
  final String message;
  final int statusCode;

  NetworkException({
    this.message = '',
    this.statusCode = 500,
  });

  @override
  String toString() => 'NetworkException: $message, $statusCode';
}