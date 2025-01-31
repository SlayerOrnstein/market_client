// Example file
// ignore_for_file: avoid_print

import 'package:market_client/market_client.dart';

Future<void> main() async {
  final httpClient = MarketHttpClient();
  final client = MarketClient(httpClient);
  final recent = await client.orders.fetchRecentOrders();

  print(recent.first.id);
}
