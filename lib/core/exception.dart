const BASE_EXCEPTION = "BaseException";
const SERVER_EXCEPTION = "ServerException";
const AUTHENTICATION_EXCEPTION = "AuthenticationException";

class BaseException {
  final String type = BASE_EXCEPTION;
  final String message;
  BaseException(this.message);
}

class ServerException extends BaseException implements Exception {
  final String type = SERVER_EXCEPTION;
  final String message;
  ServerException(this.message) : super(message);
}

class AuthenticationException extends BaseException implements Exception {
  final String type = AUTHENTICATION_EXCEPTION;
  final String message;
  AuthenticationException(this.message) : super(message);
}
