/// Your request was bad and you should find out why.
class BadRequestException implements Exception {}

/// You have no power here
class UnauthorisedException implements Exception {}

/// {@template fdexception}
/// Server denied your advances.
/// {@endtemplate}
class FetchDataException implements Exception {
  /// {@macro fdexception}
  FetchDataException(this.message);

  /// Either custom message or server message as a string.
  final String message;

  @override
  String toString() {
    return message;
  }
}
