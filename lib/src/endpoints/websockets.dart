import 'dart:async';
import 'dart:convert';

import 'package:market_client/src/utils/utils.dart';
import 'package:web_socket_client/web_socket_client.dart';

/// Creates an websocket URI with the given [MarketPlatform]
Uri websocketMarketUri(MarketPlatform platform) {
  return Uri(
    scheme: 'wss',
    host: 'warframe.market',
    path: 'socket',
    queryParameters: {'platform': platform.name},
  );
}

/// {@template websocket_types}
/// Conains marcket websocket events.
/// {@endtemplate}
enum MarketWebsocketTypes {
  /// Event sent to subscribe to new orders.
  subscribeToNewOrders('@WS/SUBSCRIBE/MOST_RECENT'),

  /// Event received when a new order was emmited.
  newOrderEvent('@WS/SUBSCRIPTIONS/MOST_RECENT/NEW_ORDER'),

  /// Event received when the online count is updated.
  onlineCountEvent('@WS/MESSAGE/ONLINE_COUNT');

  const MarketWebsocketTypes(this.type);

  /// Event type
  final String type;
}

/// {@template websocket_endpoint}
/// Basic functions to listen to the websocket provided by Warframe.market.
///
/// Not documented and untested, used at your own risk
/// {@endtemplate}
class MarketWebsocket {
  /// {@macro websocket_endpoint}
  MarketWebsocket(WebSocket? websocket)
      : _websocket =
            websocket ?? WebSocket(websocketMarketUri(MarketPlatform.pc));

  final WebSocket _websocket;

  /// Warframe market websocket events.
  ///
  /// All events are decoded into a json object.
  Stream<MarketResponse<Map<String, dynamic>>> get messages {
    return _websocket.messages
        .map<MarketResponse<Map<String, dynamic>>>((event) {
      return HttpHelpers.parseResponse<Map<String, dynamic>>(event as String);
    });
  }

  /// Sends a json object to the market websocket.
  ///
  /// Must use the types in [MarketWebsocketTypes].
  void send(MarketWebsocketTypes event) =>
      _websocket.send(json.encode({'type': event.type}));

  /// Closes and discards the websocket singleton.
  void close() => _websocket.close();
}
