import 'dart:isolate';

import 'package:market_client/market_client.dart';

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

  /// Emits new orders.
  Stream<OrderFull> newOrders() {
    _marketWebsocket.send(MarketWebsocketTypes.subscribeToNewOrders);

    return _marketWebsocket.messages
        .where((e) => e['type'] == MarketWebsocketTypes.newOrderEvent)
        .map(_parsePayload)
        .map(OrderFull.fromJson);
  }

  Map<String, dynamic> _parsePayload(Map<String, dynamic> event) {
    final payload = event['payload'] as Map<String, dynamic>;

    return payload['order'] as Map<String, dynamic>;
  }

  /// Retrives a list of the most recent orders.
  ///
  /// Not sure up till when so expect a long list.
  Future<MostRecentOrders> fetchRecentOrders() async {
    final response = await _client.get('/most_recent');
    final data =
        await Isolate.run(() => HttpHelpers.parseResponse(response.body));
    final payload = data['payload'] as Map<String, dynamic>;

    return MostRecentOrders.fromJson(payload);
  }
}
