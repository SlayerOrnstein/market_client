import 'dart:convert';
import 'dart:io';

import 'package:market_client/src/utils/utils.dart';

const String _basePath = 'warframe.market';

/// Response structure returned by WFM
typedef MarketResponse<T> = ({String apiVersion, T data, dynamic error});

/// Header options for WFM
typedef MarketHeaderOptions = ({MarketPlatform? platform, String? language, bool? enableCrossplay});

/// An abstract class for functions to help with http related jobs.
abstract class HttpHelpers {
  /// Market Image Uri builder for market assets
  static Uri marketImageUriBuilder(String imagePath) {
    return Uri.https(_basePath, '/static/assets/$imagePath');
  }

  /// Helper to create headers with proper values.
  static Map<String, String> headers(MarketHeaderOptions? options) {
    return <String, String>{
      'Content-Type': 'application/json',
      'Platform': options?.platform?.name ?? MarketPlatform.pc.name,
      'Language': options?.language ?? 'en',
      'Crossplay': '${options?.enableCrossplay ?? true}',
    };
  }

  /// Returns the response body into a Map object of Warframe Market's response.
  static MarketResponse<T> parseResponse<T>(String body) {
    final json = jsonDecode(body) as Map<String, dynamic>;
    var data = json['data'];
    if (data is List<dynamic>) data = List<Map<String, dynamic>>.from(data);

    return (apiVersion: json['apiVersion'] as String, data: data as T, error: json['error']);
  }

  /// Utility function to throw using statusCode
  static void checkStatusCode(int statusCode, {String? response}) {
    if (statusCode == 200) return;

    throw switch (statusCode) {
      HttpStatus.badRequest => BadRequestException(),
      HttpStatus.unauthorized => UnauthorisedException(),
      _ => throw FetchDataException(statusCode, response),
    };
  }
}
