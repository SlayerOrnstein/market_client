import 'dart:convert';
import 'dart:io';

import 'package:market_client/src/utils/utils.dart';

const String _basePath = 'warframe.market';

typedef MarketResponse<T> = ({String apiVersion, T data, dynamic error});

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
  static MarketResponse<T> parseResponse<T>(String body) {
    final json = jsonDecode(body) as Map<String, dynamic>;

    return (
      apiVersion: json['apiVersion'] as String,
      data: json['data'] as T,
      error: json['error']
    );
  }

  /// Utility function to throw using statusCode
  static void checkStatusCode(int statusCode, {String? reason}) {
    if (statusCode == 200) return;

    throw switch (statusCode) {
      HttpStatus.badRequest => BadRequestException(),
      HttpStatus.unauthorized => UnauthorisedException(),
      _ => throw FetchDataException(statusCode, reason)
    };
  }
}
