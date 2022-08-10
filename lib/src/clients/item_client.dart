import 'package:market_client/src/entities/order_set.dart';
import 'package:market_client/src/enums.dart';
import 'package:market_client/src/http.dart';
import 'package:market_client/src/models/models.dart';

class ItemClient {
  const ItemClient({required MarketHttpClient client}) : _client = client;

  final MarketHttpClient _client;

  /// Gets all items and their information.
  Future<List<ItemShort>> getMarketItems() async {
    final payload = await _client.get('/items');

    return List<Map<String, dynamic>>.from(payload['items'] as List<dynamic>)
        .map(ItemShort.fromJson)
        .toList();
  }

  /// Gets the Warframe market information for one item.
  /// Items will always return an entire set for any item.
  ///
  /// {@template item_note}
  /// Note: Warfrmae market has a certian layout for item urls, it's recommneded
  /// to get the url from [MarketClient.getMarketItems()] in order to get that
  /// url.
  /// {@endtemplate}
  Future<ItemSet> getMarketItem(String item) async {
    final payload = await _client.get('/items/$item');

    return ItemSet.fromJson(payload['item'] as Map<String, dynamic>);
  }

  /// Returns a list of orders for any tradable item.
  ///
  /// {@macro item_note}
  Future<OrderSet<OrderRow>> searchOrders(String urlName) async {
    final payload = await _client.get('/items/$urlName/orders');
    final orders = List<dynamic>.from(payload['orders'] as List<dynamic>)
        .map(
          (dynamic o) => OrderRow.fromJson(o as Map<String, dynamic>),
        )
        .toList();

    return OrderSet(
      selling: orders.where((e) => e.orderType == OrderType.sell).toList(),
      buying: orders.where((e) => e.orderType == OrderType.buy).toList(),
    );
  }

  // /// Get sale statistics on a [MarketItem].
  // Future<MarketItemStatistics> itemStatistics(String itemUrl) async {
  //   final payload = await client.get('items/$itemUrl/statistics');

  //   return MarketItemStatistics.fromJson(payload);
  // }

  /// Returns both sell and buy orders for the last 4 hours.
  Future<OrderRow> mostRecentOrders() async {
    final payload = await _client.get('/most_recent');

    return OrderRow.fromJson(payload);
  }
}
