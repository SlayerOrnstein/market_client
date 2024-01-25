import 'dart:async';
import 'dart:convert';

import 'package:market_client/market_client.dart';
import 'package:web_socket_client/web_socket_client.dart';

/// {@template websocket_types}
/// Conains marcket websocket events.
/// {@endtemplate}
abstract class MarketWebsocketTypes {
  /// Event sent to subscribe to new orders.
  static const subscribeToNewOrders = '@WS/SUBSCRIBE/MOST_RECENT';

  /// Event received when a new order was emmited.
  static const newOrderEvent = '@WS/SUBSCRIPTIONS/MOST_RECENT/NEW_ORDER';

  /// Event received when the online count is updated.
  static const onlineCountEvent = '@WS/MESSAGE/ONLINE_COUNT';
}

/// {@template websocket_endpoint}
/// Basic functions to listen to the websocket provided by Warframe.market.
/// {@endtemplate}
class MarketWebsocket {
  /// {@macro websocket_endpoint}
  MarketWebsocket(WebSocket websocket) : _websocket = websocket;

  /// Creates a websocket connection  or returns the currently active one.
  factory MarketWebsocket.openWebsocket(MarketPlatform platform) {
    final wsUri = Uri(
      scheme: 'wss',
      host: 'warframe.market',
      path: 'socket',
      queryParameters: {'platform': platform.name},
    );

    final channel = WebSocket(wsUri);

    return _marketWebsocket ??= MarketWebsocket(channel);
  }

  final WebSocket _websocket;

  static MarketWebsocket? _marketWebsocket;

  /// Warframe market websocket events.
  ///
  /// All events are decoded into a json object.
  Stream<Map<String, dynamic>> get messages {
    return _websocket.messages.map<Map<String, dynamic>>(
      (event) => HttpHelpers.parseResponse(event as String),
    );
  }

  /// Sends a json object to the market websocket.
  ///
  /// Must use the types in [MarketWebsocketTypes].
  void send(String type) => _websocket.send(json.encode({'type': type}));

  /// Closes and discards the websocket singleton.
  void close() {
    _websocket.close();
    _marketWebsocket = null;
  }

  /// By default the websocket transmits an online count of users.
  Stream<OnlineCount> onlineCount() {
    return messages
        .where((e) => e['type'] == MarketWebsocketTypes.onlineCountEvent)
        .map((event) => event['payload'] as Map<String, dynamic>)
        .map(OnlineCount.fromJson);
  }
}
