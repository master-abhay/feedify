class AppExceptions implements Exception {
  final String message;
  final String suffix;

  AppExceptions(this.message, this.suffix);

  @override
  String toString() {
    return '$suffix $message';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message ?? '', '');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message ?? '', '');
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message]) : super(message ?? '', '');
}

class UserNotFoundException extends AppExceptions {
  UserNotFoundException([String? message]) : super(message ?? '', '');
}

class RequestEntityTooLargeException extends AppExceptions {
  RequestEntityTooLargeException([String? message]) : super(message ?? '', '');
}

class UnprocessableEntityException extends AppExceptions {
  UnprocessableEntityException([String? message]) : super("", message!);
}

class TooManyRequestsException extends AppExceptions {
  TooManyRequestsException([String? message]) : super(message ?? '', '');
}

class InternalServerErrorException extends AppExceptions {
  InternalServerErrorException([String? message]) : super(message ?? '', '');
}

class FormatException extends AppExceptions {
  FormatException([String? message]) : super(message ?? '', '');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message ?? '', "");
}

class ValidationException extends AppExceptions {
  ValidationException(String message) : super(message, "");
}
