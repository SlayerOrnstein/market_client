import 'package:market_client/market_client.dart';
import 'package:market_client/src/models/recent_orders.dart';

/// {@template orders_endpoint}
/// Contains functions to retrive new and recent orders.
/// {@endtemplate}
class OrdersEndpoint {
  /// {@macro orders_endpoint}
  const OrdersEndpoint(MarketHttpClient client, MarketWebsocket marketWebsocket)
      : _client = client,
        _marketWebsocket = marketWebsocket;

  final MarketHttpClient _client;
  final MarketWebsocket _marketWebsocket;

  Map<String, dynamic> _parsePayload(Map<String, dynamic> event) {
    final payload = event['payload'] as Map<String, dynamic>;

    return payload['order'] as Map<String, dynamic>;
  }

  /// Initializes and listens for new orders.
  Stream<OrderFull> newOrders() {
    _marketWebsocket.send(MarketWebsocketTypes.subscribeToNewOrders);

    return _marketWebsocket.messages
        .where((e) => e['type'] == MarketWebsocketTypes.newOrderEvent)
        .map(_parsePayload)
        .map(OrderFull.fromJson);
  }

  /// Retrives a list of the most recent orders.
  ///
  /// Not sure up till when so expect a long list.
  Future<MostRecentOrders> getMostRecentOrders() async {
    final response = await _client.get('/most_recent');
    final payload = HttpHelpers.parseResponse(response.body);

    return MostRecentOrders.fromJson(payload);
  }
}
