import 'package:market_client/market_client.dart';
import 'package:market_client/src/utils/utils.dart';

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
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final items = List<Map<String, dynamic>>.from(body.data);

    return items.map(ItemShort.fromMap).toList();
  }

  /// Get information about a specific item.
  Future<ItemFull> fetchItem(String slug) async {
    final response = await _client.get('/item/$slug');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return ItemFull.fromMap(body.data);
  }

  /// Get an item set.
  Future<({String id, List<ItemFull> items})> fetchItemSet(String slug) async {
    final response = await _client.get('/item/$slug/set');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);
    final items =
        List<Map<String, dynamic>>.from(body.data['items'] as List<dynamic>);

    return (
      id: body.data['id'] as String,
      items: items.map(ItemFull.fromMap).toList()
    );
  }
}
