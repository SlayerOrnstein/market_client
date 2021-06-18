import 'package:market_client/src/http.dart';
import 'package:market_client/src/models/item.dart';
import 'package:market_client/src/models/item_order.dart';
import 'package:market_client/src/models/item_set.dart';

class MarketClient {
  MarketClient({MarketHttpClient? client})
      : _client = client ?? MarketHttpClient();

  final MarketHttpClient _client;

  Future<List<MarketItem>> getMarketItems() async {
    final payload = await _client.get('/items');

    return List<Map<String, dynamic>>.from(payload['items'] as List<dynamic>)
        .map((e) => MarketItem.fromJson(e))
        .toList();
  }

  Future<MarketItemSet> getMarketItem(String item) async {
    final payload = await _client.get('/items/$item');

    return MarketItemSet.fromJson(payload['item'] as Map<String, dynamic>);
  }

  Future<List<ItemOrder>> searchOrders(String urlName) async {
    final payload = await _client.get('/items/$urlName/orders');

    return List.from(payload['orders'] as List<dynamic>)
        .map<ItemOrder>((o) => ItemOrder.fromJson(o))
        .toList();
  }
}
