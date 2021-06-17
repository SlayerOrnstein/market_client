import 'package:market_client/src/http.dart';
import 'package:market_client/src/models/item.dart';
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
}
