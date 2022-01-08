import 'package:market_client/src/enums.dart';
import 'package:market_client/src/http.dart';
import 'package:market_client/src/models/models.dart';

/// {@template marketclient}
/// Main Entry point for the market client.
/// {@endtemplate}
class MarketClient {
  /// {@macro marketclient}
  ///
  /// Users can pass down an instance of [MarketHttpClient] in order to channge
  /// the default language or game platform which is English and PC.
  MarketClient({MarketHttpClient? client})
      : _client = client ?? MarketHttpClient();

  final MarketHttpClient _client;

  /// Gets all items and their information.
  Future<List<MarketItem>> getMarketItems() async {
    final payload = await _client.get('/items');

    return List<Map<String, dynamic>>.from(payload['items'] as List<dynamic>)
        .map((e) => MarketItem.fromJson(e))
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
  Future<MarketOrders> searchOrders(String urlName) async {
    final payload = await _client.get('/items/$urlName/orders');
    final orders = List<dynamic>.from(payload['orders'] as List<dynamic>)
        .map<ItemOrder>(
          (dynamic o) => ItemOrder.fromJson(o as Map<String, dynamic>),
        )
        .toList();

    return MarketOrders(
      sellOrders: orders.where((e) => e.orderType == OrderType.sell).toList(),
      buyOrders: orders.where((e) => e.orderType == OrderType.buy).toList(),
    );
  }

  Future<MarketItemStatistics> itemStatistics(String itemUrl) async {
    final payload = await _client.get('items/$itemUrl/statistics');

    return MarketItemStatistics.fromJson(payload);
  }

  /// Returns both sell and buy orders for the last 4 hours.
  Future<RecentMarketOrders> mostRecentOrders() async {
    final payload = await _client.get('/most_recent');

    return RecentMarketOrders.fromJson(payload);
  }
}
