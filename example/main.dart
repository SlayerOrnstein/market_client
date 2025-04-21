// Example file
// ignore_for_file: avoid_print

import 'dart:io';

import 'package:market_client/market_client.dart';

Future<void> main() async {
  final httpClient = MarketHttpClient();
  final client = MarketClient(httpClient);
  final manifest = await client.items.fetchItems();
  final recent = await client.orders.fetchRecentOrders();

  for (final order in recent) {
    final item = manifest.firstWhere((i) => i.id == order.itemId);
    print(
      '${order.user.ingameName} - ${order.type.name} - ${item.i18n['en']?.name} - ${order.platinum} '
      'plat/${order.quantity}\n',
    );
  }

  exit(0);
}
