import 'package:market_client/market_client.dart';

/// {@template market_client}
/// Base Market client that exposes other endpoints.
/// {@endtemplate}
class MarketClient {
  /// {@macro market_client}
  const MarketClient(MarketHttpClient client, MarketWebsocket marketWebsocket)
      : _client = client,
        _marketWebsocket = marketWebsocket;

  final MarketHttpClient _client;
  final MarketWebsocket _marketWebsocket;

  /// endpoints to retrieve publicly available orders and new orders.
  OrdersEndpoint get orders => OrdersEndpoint(_client, _marketWebsocket);

  /// Get orders on market items.
  ///
  /// Can also retrieve a list of items that warframe market currently allows.
  ItemsEndpoint get items => ItemsEndpoint(_client);

  /// User specfic endpoints.
  AuthEndpoint get auth => AuthEndpoint(_client);

  /// Get and updated count of online and registered users.
  Stream<OnlineCount> get onlineCount => _marketWebsocket.onlineCount();
}
