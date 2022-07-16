import 'package:equatable/equatable.dart';

const FAILURE = "Failure";
const SERVER_FAILURE = "ServerFailure";
const AUTHENTICATION_FAILURE = "AuthenticationFailure";
const MISSING_ARGUMENT_FAILURE = "MissingArgumentFailure";
const NOT_FOUND_FAILURE = "NotFoundFailure";
const NOT_AUTHORIZED_FAILURE = "NotAuthorizedFailure";

class Failure extends Equatable {
  final String type = FAILURE;
  final String message;
  Failure(this.message);
  @override
  List<Object> get props => [type, message];
  String toString() {
    return '$type: $message';
  }

  static Failure fromJson(Map<String, dynamic> json) {
    final message = json['message'];
    if (json["type"] == SERVER_FAILURE) {
      return ServerFailure(message);
    } else if (json["type"] == AUTHENTICATION_FAILURE) {
      return AuthenticationFailure(message);
    } else if (json["type"] == MISSING_ARGUMENT_FAILURE) {
      return MissingArgumentFailure(message);
    } else if (json["type"] == NOT_FOUND_FAILURE) {
      return NotFoundFailure(message);
    } else if (json["type"] == NOT_AUTHORIZED_FAILURE) {
      return AuthenticationFailure(message);
    } else {
      return Failure(message);
    }
  }
}

class ServerFailure extends Failure {
  final String type = SERVER_FAILURE;

  ServerFailure(String message) : super(message);
}

class AuthenticationFailure extends Failure {
  final String type = AUTHENTICATION_FAILURE;

  AuthenticationFailure(String message) : super(message);
}

class MissingArgumentFailure extends Failure {
  final String type = MISSING_ARGUMENT_FAILURE;
  MissingArgumentFailure(String message) : super(message);
}

class NotFoundFailure extends Failure {
  final String type = NOT_FOUND_FAILURE;
  NotFoundFailure(String message) : super(message);
}

class NotAuthorizedFailure extends Failure {
  final String type = NOT_AUTHORIZED_FAILURE;
  NotAuthorizedFailure(String message) : super(message);
}
