import 'package:market_client/market_client.dart';

/// {@template items_endpoint}
/// Provides all information about common item's data models.
/// {@endtemplate}
class ItemsEndpoint {
  /// {@macro items_endpoint}
  const ItemsEndpoint(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// Get a list of all tradable items.
  Future<List<ItemShort>> fetchItems() async {
    final response = await _client.get('/items');
    final data = HttpHelpers.parseResponse(response.body);
    final payload = data['payload'] as Map<String, dynamic>;

    return (payload['items'] as List<dynamic>)
        .map((e) => ItemShort.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Get information about a specific item.
  ///
  /// Warframe market url name are in snake case. If you are unsure of an
  /// item's url name you can pull and cache [ItemsEndpoint.fetchItems].
  Future<List<ItemFull>> fetchItem(String urlName) async {
    final response = await _client.get('/items/$urlName');
    final data = HttpHelpers.parseResponse(response.body);
    final payload = data['payload'] as Map<String, dynamic>;
    final item = payload['item'] as Map<String, dynamic>;
    final itemsInSet =
        List<Map<String, dynamic>>.from(item['items_in_set'] as List<dynamic>);

    return itemsInSet.map(ItemFull.fromJson).toList();
  }

  /// Get a list of orders for an item.
  ///
  /// [includeItem] will include the item itself.
  Future<(List<OrderRow>, List<ItemFull>?)> fetchItemOrders(
    String urlName, {
    bool includeItem = false,
  }) async {
    final response = await _client.get(
      '/items/$urlName/orders',
      queryParameters: includeItem ? {'include': 'item'} : null,
    );
    final data = HttpHelpers.parseResponse(response.body);
    final payload = data['payload'] as Map<String, dynamic>;
    final orders = (payload['orders'] as List<dynamic>)
        .map((e) => OrderRow.fromJson(e as Map<String, dynamic>))
        .toList();

    if (includeItem) {
      final included = data['include'] as Map<String, dynamic>;
      final includedItem = included['item'] as Map<String, dynamic>;
      final itemSet = List<Map<String, dynamic>>.from(
        includedItem['items_in_set'] as List<dynamic>,
      );

      return (orders, itemSet.map(ItemFull.fromJson).toList());
    }

    return (orders, null);
  }
}
