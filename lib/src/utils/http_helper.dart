import 'dart:convert';
import 'dart:io';

import 'package:market_client/market_client.dart';

const String _basePath = 'warframe.market';

/// An abstract class for functions to help with http related jobs.
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
      if (token != null) 'Authorization': token,
      'Content-Type': 'application/json',
    };
  }

  /// Returns the response body into a Map object of Warframe Market's response.
  static Map<String, dynamic> parseResponse(String body) {
    return json.decode(body) as Map<String, dynamic>;
  }

  // ignore: public_member_api_docs
  static void checkStatusCode(int statusCode, {String? reason}) {
    if (statusCode == 200) return;

    throw switch (statusCode) {
      HttpStatus.badRequest => BadRequestException(),
      HttpStatus.unauthorized => UnauthorisedException(),
      _ => throw FetchDataException(statusCode, reason)
    };
  }
}
