import 'package:market_client/market_client.dart';

/// {@template base_endpoint}
/// Base class for all endpoints
/// {@endtemplate}
abstract class BaseEndpoint {
  /// {@macro base_endpoint}
  const BaseEndpoint(this.client);

  /// [MarketHttpClient] used to make request
  final MarketHttpClient client;
}
