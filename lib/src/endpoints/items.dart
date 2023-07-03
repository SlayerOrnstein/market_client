import 'package:market_client/market_client.dart';

class ItemsEndpoint {
  const ItemsEndpoint(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  Future<List<ItemShort>> items() async {
    final response = await _client.get('/items');
    final payload = HttpHelpers.parseResponse(response.body);

    return (payload['items'] as List<dynamic>)
        .map((e) => ItemShort.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<ItemSet> item(String urlName) async {
    final response = await _client.get('/items/$urlName');
    final payload = HttpHelpers.parseResponse(response.body);
    final item = payload['item'] as Map<String, dynamic>;

    return ItemSet.fromJson(item);
  }

  Future<(List<ItemOrder>, ItemSet?)> itemOrders(
    String urlName, {
    bool includeItem = false,
  }) async {
    final response = await _client.get('/items/$urlName/orders');
    final payload = HttpHelpers.parseResponse(response.body);
    final orders = (payload['orders'] as List<dynamic>)
        .map((e) => ItemOrder.fromJson(e as Map<String, dynamic>))
        .toList();

    if (includeItem) {
      final item = payload['item'] as Map<String, dynamic>;

      return (orders, ItemSet.fromJson(item));
    }

    return (orders, null);
  }
}
