import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:market_client/market_client.dart';

const _root = 'api.warframe.market';
const _version = 'v1';

/// {@template guest_client}
/// The Client that makes the raw calls to Warframe market
/// {@endtemplate}
class MarketHttpClient {
  /// {@macro guest_client}
  MarketHttpClient({
    this.token,
    this.language = 'en',
    this.platform = MarketPlatform.pc,
    http.Client? client,
  }) : client = client ?? RetryClient(http.Client());

  /// The token used to make authorized request.
  ///
  /// If a token is supplied it will be used for all request.
  final String? token;

  /// The language used in request
  ///
  /// Note: If a language isn't supported by Warframe Market the request will
  /// return in English.
  final String language;

  /// The game platform used in request.
  final MarketPlatform platform;

  /// The [http.Client] used internally to make http request.
  ///
  /// If no [http.Client] is supplied a [RetryClient] is used.
  late final http.Client client;

  /// Sends a GET  request.
  Future<http.Response> get(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    if (headers != null) headers['Language'] = language;
    final uri = Uri.https(_root, '/$_version$path', queryParameters);
    final res = await client.get(uri, headers: headers);

    HttpHelpers.checkStatusCode(res.statusCode, reason: res.body);

    return res;
  }

  /// Sends a POST request.
  Future<http.Response> post(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Object? body,
  }) async {
    final uri = Uri.https(_root, '/$_version$path', queryParameters);

    final res = await client.post(
      uri,
      headers: HttpHelpers.headers(
        platform: platform,
        language: language,
        token: token,
      ),
      body: json.encode(body),
    );

    HttpHelpers.checkStatusCode(res.statusCode);

    return res;
  }

  /// Sends a DELETE request.
  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    Object? body,
  }) async {
    final uri = Uri.https(_root, '/$_version$path', queryParameters);
    final res = await client.delete(
      uri,
      headers: HttpHelpers.headers(
        platform: platform,
        language: language,
        token: token,
      ),
      body: body,
    );

    HttpHelpers.checkStatusCode(res.statusCode);

    return HttpHelpers.parseResponse(res.body);
  }
}
