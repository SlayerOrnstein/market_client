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
  const MarketHttpClient({
    required this.client,
    required this.language,
    required this.platform,
  });

  /// Http Client used to make calls.
  final http.Client client;

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
  }) : super(
          client: client ?? RetryClient(http.Client()),
          platform: platform,
          language: language,
        );

  @override
  Future<Map<String, dynamic>> get(String path) async {
    final res = await client
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
    final res = await client
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

/// {@template martket_auth}
/// Creates and autherized client to make calls to Warframe market as a user.
/// {@endtemplate market_auth}
class MarketAuthHttpClient extends MarketHttpClient {
  /// {@macro market_auth}
  MarketAuthHttpClient({
    http.Client? client,
    required this.token,
    MarketPlatform platform = MarketPlatform.pc,
    String language = 'en',
  }) : super(
          client: client ?? RetryClient(http.Client()),
          platform: platform,
          language: language,
        );

  /// User JWT token.
  final String token;

  @override
  Future<Map<String, dynamic>> get(String path) async {
    final res = await client
        .get(
          Uri.parse('$_root$path'),
          headers: HttpHelpers.headers(
            platform: platform,
            language: language,
            token: token,
          ),
        )
        .timeout(_kTimeout);

    return HttpHelpers.parseResponse(res);
  }

  @override
  Future<Map<String, dynamic>> post(String path) async {
    final res = await client
        .post(
          Uri.parse('$_root/$path'),
          headers: HttpHelpers.headers(
            platform: platform,
            language: language,
            token: token,
          ),
        )
        .timeout(_kTimeout);

    return HttpHelpers.parseResponse(res);
  }
}
