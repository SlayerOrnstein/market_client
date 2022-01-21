import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:market_client/src/enums.dart';
import 'package:market_client/src/utils/http_helpers.dart';

const _root = 'api.warframe.market';
const _version = 'v1';

/// {@template guest_client}
/// The Client that makes the raw calls to Warframe market
/// {@endtemplate}
class MarketHttpClient {
  /// {@macro guest_client}
  MarketHttpClient({
    this.platform = MarketPlatform.pc,
    this.language = 'en',
    this.token,
    http.Client? client,
  }) : client = client ?? RetryClient(http.Client());

  /// The game platform used in request.
  final MarketPlatform platform;

  /// The language used in request
  ///
  /// Note: If a language isn't supported by Warframe Market the request will
  /// return in English.
  final String language;

  /// The token used to make authorized request.
  ///
  /// If a token is supplied it will be used for all request.
  final String? token;

  /// The [http.Client] used internally to make http request.
  ///
  /// If no [http.Client] is supplied a [RetryClient] is used.
  late final http.Client client;

  Map<String, String> get _headers {
    return HttpHelpers.headers(
      platform: platform,
      language: language,
      token: token,
    );
  }

  /// Sends a GET  request.
  Future<Map<String, dynamic>> get(
    String path, [
    Map<String, String>? queryParameters,
  ]) async {
    final uri = Uri.https(_root, '/$_version/$path', queryParameters);

    final res = await client.get(uri, headers: _headers);
    return HttpHelpers.parseResponse(res);
  }

  /// Sends a POST request.
  Future<Map<String, dynamic>> post(
    String path, [
    Map<String, String>? queryParameters,
  ]) async {
    final uri = Uri.https(_root, '/$_version/$path', queryParameters);

    final res = await client.post(uri, headers: _headers);
    return HttpHelpers.parseResponse(res);
  }

  /// Sends a DELETE request.
  Future<Map<String, dynamic>> delete(
    String path, [
    Map<String, String>? queryParameters,
  ]) async {
    final uri = Uri.https(_root, '/$_version/$path', queryParameters);

    final res = await client.delete(uri, headers: _headers);
    return HttpHelpers.parseResponse(res);
  }

  /// Creates a new instance of [MarketHttpClient].
  MarketHttpClient copyWith({
    MarketPlatform? platform,
    String? language,
    String? token,
    http.Client? client,
  }) {
    return MarketHttpClient(
      platform: platform ?? this.platform,
      language: language ?? this.language,
      token: token ?? this.token,
      client: client ?? this.client,
    );
  }
}
