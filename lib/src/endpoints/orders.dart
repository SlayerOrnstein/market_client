import 'package:market_client/src/http_client.dart';
import 'package:market_client/src/models/models.dart';
import 'package:market_client/src/utils/utils.dart';

/// {@template orders_endpoint}
/// Contains functions to retrive new and recent orders.
/// {@endtemplate}
class OrdersEndpoint {
  /// {@macro orders_endpoint}
  const OrdersEndpoint(MarketHttpClient client) : _client = client;

  final MarketHttpClient _client;

  /// Get the most recent orders.
  /// 500 max, for the last 4 hours, sorted by `OrderWithUser.createAt`
  ///
  /// Cached, with 1min refresh interval.
  Future<List<OrderWithUser>> fetchRecentOrders() async {
    final response = await _client.get('/orders/recent');
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final orders = List<Map<String, dynamic>>.from(body.data);

    return orders.map(OrderWithUser.fromMap).toList();
  }

  /// Get a list of all orders for an item from users who were/are online
  /// within the last 7 days.
  Future<List<OrderWithUser>> fetchItemOrders(String slug, {OrderFilter? filter}) async {
    final response = await _client.get(
      '/orders/items/$slug',
      queryParameters: (filter?.toMap()?..removeWhere((k, v) => v == null))?.map((k, v) => MapEntry(k, v.toString())),
    );

    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final orders = List<Map<String, dynamic>>.from(body.data);

    return orders.map(OrderWithUser.fromMap).toList();
  }

  /// Get public orders from a specified user.
  Future<List<Order>> fetchUserOrders(String slug, {bool isUserId = false}) async {
    final response = await _client.get('/orders/${isUserId ? 'userId' : 'user'}/$slug');

    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final orders = List<Map<String, dynamic>>.from(body.data);

    return orders.map(Order.fromMap).toList();
  }

  /// Get a specific order
  Future<OrderWithUser> fetchOrder(String id) async {
    final response = await _client.get('/order/$id');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return OrderWithUser.fromMap(body.data);
  }
}
