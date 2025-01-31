import 'package:market_client/market_client.dart';

/// {@template market_client}
/// Base Market client that exposes other endpoints.
/// {@endtemplate}
class MarketClient {
  /// {@macro market_client}
  const MarketClient(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// endpoints to retrieve publicly available orders and new orders.
  OrdersEndpoint get orders => OrdersEndpoint(_client);

  /// Get orders on market items.
  ///
  /// Can also retrieve a list of items that warframe market currently allows.
  ItemsEndpoint get items => ItemsEndpoint(_client);
}
