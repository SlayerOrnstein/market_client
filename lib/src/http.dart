import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:market_client/src/enums.dart';
import 'package:market_client/src/utils/http_helpers.dart';

const _root = 'https://api.warframe.market/v1';
const _kTimeout = Duration(seconds: 5);

/// {@template client}
/// The base client class for [MarketGuestHttpClient] and [MarketAuthHttpClient]
/// {@endtemplate}
abstract class MarketHttpClient {
  /// {@macro client}
  const MarketHttpClient({required this.language, required this.platform});

  /// The language that the http caller will emit to the api.
  ///
  /// According to Warframe Market's docs if a language isn't supported it will
  /// return results in  english.
  final String language;

  /// The game platform the http caller will send to the api.
  ///
  /// By default this will be [MarketPlatform.pc].
  final MarketPlatform platform;

  /// Makes a GET request to [path]
  Future<Map<String, dynamic>> get(String path);

  /// Makes a POST request to [path]
  Future<Map<String, dynamic>> post(String path);
}

/// {@template guest_client}
/// The Client that makes the raw calls to Warframe market
/// {@endtemplate}
class MarketGuestHttpClient extends MarketHttpClient {
  /// {@macro guest_client}
  MarketGuestHttpClient({
    http.Client? client,
    MarketPlatform platform = MarketPlatform.pc,
    String language = 'en',
  })  : _client = client ?? RetryClient(http.Client()),
        super(platform: platform, language: language);

  final http.Client _client;

  @override
  Future<Map<String, dynamic>> get(String path) async {
    final res = await _client
        .get(
          Uri.parse('$_root$path'),
          headers: HttpHelpers.headers(
            platform: platform,
            language: language,
          ),
        )
        .timeout(_kTimeout);

    return HttpHelpers.parseResponse(res);
  }

  @override
  Future<Map<String, dynamic>> post(String path) async {
    final res = await _client
        .post(
          Uri.parse('$_root/$path'),
          headers: HttpHelpers.headers(
            platform: platform,
            language: language,
          ),
        )
        .timeout(_kTimeout);

    return HttpHelpers.parseResponse(res);
  }
}
