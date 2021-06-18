import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

import 'enums.dart';
import 'exceptions.dart';

class MarketHttpClient {
  MarketHttpClient({
    http.Client? client,
    this.token,
    this.platform = MarketPlatform.pc,
    this.language = 'en',
  }) : _client = client ?? http.Client();

  final http.Client _client;

  final String? token;

  final MarketPlatform platform;

  final String language;

  static const _root = 'https://api.warframe.market/v1';

  static const kTimeout = Duration(seconds: 5);

  Future<Map<String, dynamic>> get(String path) async {
    return await retry(
      () async {
        final res = await _client
            .get(Uri.parse('$_root$path'), headers: _headers(token, platform))
            .timeout(kTimeout);

        return _parseResponse(res);
      },
      retryIf: _shouldRetry,
    );
  }

  Future<Map<String, dynamic>> post(String path) async {
    return await retry(
      () async {
        final res = await _client
            .post(Uri.parse('$_root/$path'), headers: _headers(token, platform))
            .timeout(kTimeout);

        return _parseResponse(res);
      },
      retryIf: _shouldRetry,
    );
  }

  Map<String, dynamic> _parseResponse(http.Response res) {
    if (res.statusCode != 200) _throwClientExceptions(res.statusCode);

    final data = json.decode(res.body) as Map<String, dynamic>;

    return data['payload'] as Map<String, dynamic>;
  }

  Map<String, String> _headers(String? token, MarketPlatform? platform) {
    return <String, String>{
      'Platform': platform.toString().split('.').last,
      'Language': language,
      if (token != null)
        'Authorization': 'JWT=$token' // This token header might not be right.
    };
  }

  void _throwClientExceptions(int statusCode) {
    switch (statusCode) {
      case 400:
        throw BadRequestException();
      case 401:
      case 403:
        throw UnauthorisedException();
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communicating with the server');
    }
  }

  bool _shouldRetry(e) =>
      e is SocketException || e is TimeoutException || e is FormatException;
}
