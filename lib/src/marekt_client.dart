import 'package:market_client/market_client.dart';

/// {@template market_client}
/// Base Market client that exposes other endpoints.
/// {@endtemplate}
class MarketClient {
  /// {@macro market_client}
  const MarketClient(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// Get order(s)
  OrdersEndpoint get orders => OrdersEndpoint(_client);

  /// Get item(s)
  ItemsEndpoint get items => ItemsEndpoint(_client);

  /// Get litch/sister/Technocyte weapons, ephemeras, and quirks.
  NemesisEndpoint nemesis(NemesisType type) =>
      NemesisEndpoint(type: type, client: _client);

  /// Get Riven weapon(s) and atrributes
  RivenEndpoint get rivens => RivenEndpoint(_client);
}
