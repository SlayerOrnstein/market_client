class BadRequestException implements Exception {}

class UnauthorisedException implements Exception {}

class FetchDataException implements Exception {
  FetchDataException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
