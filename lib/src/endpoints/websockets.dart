import 'dart:async';
import 'dart:convert';

import 'package:market_client/market_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// {@template websocket_endpoint}
/// Basic functions to listen to the websocket provided by Warframe.market.
/// {@endtemplate}
class WebsocketEndpoints {
  /// {@macro websocket_endpoint}
  WebsocketEndpoints(WebSocketChannel websocket)
      : _sink = websocket.sink,
        _stream = websocket.stream.map<Map<String, dynamic>>(
          (event) => json.decode(event as String) as Map<String, dynamic>,
        );

  final WebSocketSink _sink;
  final Stream<Map<String, dynamic>> _stream;

  static WebsocketEndpoints? _socket;

  /// Creates a websocket connection  or returns the currently active one.
  static WebsocketEndpoints openWebsocket(MarketPlatform platform) {
    final wsUri = Uri(
      scheme: 'wss',
      host: 'warframe.market',
      path: 'socket',
      queryParameters: {'platform': platform.name},
    );

    final channel = WebSocketChannel.connect(wsUri);

    return _socket ??= WebsocketEndpoints(channel);
  }

  /// Initializes and listens for new orders.
  Stream<OrderFull> newOrders() {
    const type = '@WS/SUBSCRIPTIONS/MOST_RECENT/NEW_ORDER';

    _sink.add(json.encode({'type': '@WS/SUBSCRIBE/MOST_RECENT'}));

    return _stream.where((e) => e['type'] == type).map((event) {
      final payload = event['payload'] as Map<String, dynamic>;

      return payload['order'] as Map<String, dynamic>;
    }).map(OrderFull.fromJson);
  }

  /// By default the websocket transmits an online count of users.
  Stream<OnlineCount> onlineCount() {
    const type = '@WS/MESSAGE/ONLINE_COUNT';

    return _stream.where((e) => e['type'] == type).map((event) {
      return event['payload'] as Map<String, dynamic>;
    }).map(OnlineCount.fromJson);
  }
}
