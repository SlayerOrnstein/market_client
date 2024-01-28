import 'package:market_client/market_client.dart';
import 'package:web_socket_client/web_socket_client.dart';

Future<void> main() async {
  final httpClient = MarketHttpClient();

  final uri = Uri(
    scheme: 'wss',
    host: 'warframe.market',
    path: 'socket',
    queryParameters: {'platform': httpClient.platform.name},
  );

  final marketWebsocket = MarketWebsocket(WebSocket(uri));

  final client = MarketClient(httpClient, marketWebsocket);
  final recentOrders = await client.orders.fetchRecentOrders();

  for (final order in recentOrders.sellOrders) {
    // ignore: avoid_print
    print(order.id);
  }

  // ignore: avoid_print
  client.orders.newOrders().listen((event) => print(event.id));
}
