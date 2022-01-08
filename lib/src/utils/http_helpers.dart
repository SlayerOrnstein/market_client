import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:market_client/src/enums.dart';
import 'package:market_client/src/exceptions.dart';

const String _basePath = 'warframe.market';

abstract class HttpHelpers {
  /// Market Image Uri builder for market assets
  static Uri marketImageUriBuilder(String imagePath) {
    return Uri.https(_basePath, '/static/assets/$imagePath');
  }

  /// Helper to create headers with proper values.
  ///
  /// [MarketPlatform] is required for all calls.
  /// [language] will default to english/international if null on Warframe Market's end.
  /// [token] can be ommited if you want to make calls that don't require auth.
  static Map<String, String> headers({
    required MarketPlatform platform,
    String? language,
    String? token,
  }) {
    return <String, String>{
      'Platform': platform.toString().split('.').last,
      if (language != null) 'Language': language,
      if (token != null)
        'Authorization': 'JWT=$token' // This token header might not be right.
    };
  }

  /// Returns the payload of Warframe Market's response.
  ///
  /// Warframe market wraps thier responses like so:
  ///
  /// ```json
  /// {
  ///   "payload": {}
  /// }
  /// ```
  ///
  /// this function simply returns the data in payload and discards everything
  /// else.
  static Map<String, dynamic> parseResponse(http.Response res) {
    if (res.statusCode != 200) _throwClientExceptions(res.statusCode);

    final data = json.decode(res.body) as Map<String, dynamic>;

    return data['payload'] as Map<String, dynamic>;
  }

  static void _throwClientExceptions(int statusCode) {
    switch (statusCode) {
      case HttpStatus.badRequest:
        throw BadRequestException();
      case HttpStatus.unauthorized:
        throw UnauthorisedException();
      case HttpStatus.internalServerError:
      default:
        throw FetchDataException(
          'Error occured while communicating with the server.\n'
          'Status Code: $statusCode',
        );
    }
  }
}
