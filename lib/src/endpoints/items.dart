import 'package:market_client/market_client.dart';

/// {@template items_endpoint}
/// Provides all information about common item's data models.
/// {@endtemplate}
class ItemsEndpoint {
  /// {@macro items_endpoint}
  const ItemsEndpoint(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// Get a list of all tradable items.
  Future<List<ItemShort>> items() async {
    final response = await _client.get('/items');
    final payload = HttpHelpers.parseResponse(response.body);

    return (payload['items'] as List<dynamic>)
        .map((e) => ItemShort.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Get information about a specific item.
  ///
  /// Warframe market url name are in snake case. If you are unsure of an
  /// item's url name you can pull and cache [ItemsEndpoint.items].
  Future<ItemFull> item(String urlName) async {
    final response = await _client.get('/items/$urlName');
    final payload = HttpHelpers.parseResponse(response.body);
    final item = payload['item'] as Map<String, dynamic>;

    return ItemFull.fromJson(item['items_in_set'] as Map<String, dynamic>);
  }

  /// Get a list of orders for an item.
  ///
  /// [includeItem] will include the item itself.
  Future<(List<OrderCommon>, ItemFull?)> itemOrders(
    String urlName, {
    bool includeItem = false,
  }) async {
    final response = await _client.get('/items/$urlName/orders');
    final payload = HttpHelpers.parseResponse(response.body);
    final orders = (payload['orders'] as List<dynamic>)
        .map((e) => OrderRow.fromJson(e as Map<String, dynamic>))
        .toList();

    if (includeItem) {
      final item = payload['item'] as Map<String, dynamic>;

      return (
        orders,
        ItemFull.fromJson(item['items_in_set'] as Map<String, dynamic>)
      );
    }

    return (orders, null);
  }
}
