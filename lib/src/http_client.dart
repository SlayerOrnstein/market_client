import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:market_client/src/utils/utils.dart';

const _root = 'api.warframe.market';
const _apiVersion = 'v2';

/// {@template guest_client}
/// The Client that makes the raw calls to Warframe market
/// {@endtemplate}
class MarketHttpClient {
  /// {@macro guest_client}
  MarketHttpClient({this.language = 'en', this.platform = MarketPlatform.pc, http.Client? client})
    : _inner = client ?? http.Client();

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
  final http.Client _inner;

  /// Sends a GET  request.
  Future<http.Response> get(String path, {Map<String, String>? queryParameters, MarketHeaderOptions? headers}) async {
    final uri = Uri.https(_root, '/$_apiVersion$path', queryParameters);
    final res = await _inner.get(uri, headers: HttpHelpers.headers(headers));

    HttpHelpers.checkStatusCode(res.statusCode, response: res.body);

    return res;
  }
}
