import 'package:market_client/market_client.dart';

Future<void> main() async {
  final httpClient = MarketHttpClient();
  final marketWebsocket = MarketWebsocket.openWebsocket(httpClient.platform);

  final client = MarketClient(httpClient, marketWebsocket);
  final recentOrders = await client.orders.getMostRecentOrders();

  for (final order in recentOrders.sellOrders) {
    // ignore: avoid_print
    print(order.id);
  }

  // ignore: avoid_print
  client.orders.newOrders().listen((event) => print(event.id));
}
