import 'package:market_client/src/endpoints/base_endpoint.dart';
import 'package:market_client/src/models/models.dart';
import 'package:market_client/src/utils/utils.dart';

/// {@template orders_endpoint}
/// Contains functions to retrive new and recent orders.
/// {@endtemplate}
class Orders extends BaseEndpoint {
  /// {@macro orders_endpoint}
  const Orders(super.client);

  /// Get the most recent orders.
  /// 500 max, for the last 4 hours, sorted by `OrderWithUser.createAt`
  ///
  /// Cached, with 1min refresh interval.
  Future<List<OrderWithUser>> fetchRecentOrders() async {
    final response = await client.get('/orders/recent');
    final body = HttpHelpers.parseResponse<List<Map<String, dynamic>>>(response.body);

    return body.data.map(OrderWithUser.fromMap).toList();
  }

  /// Get a list of all orders for an item from users who were/are online within the last 7 days.
  Future<List<OrderWithUser>> fetchItemOrders(String slug, {OrderFilter? filter}) async {
    final response = await client.get('/orders/item/$slug', queryParameters: filter?.toQuery());
    final body = HttpHelpers.parseResponse<List<dynamic>>(response.body);
    final orders = List<Map<String, dynamic>>.from(body.data);

    return orders.map(OrderWithUser.fromMap).toList();
  }

  /// Get public orders from a specified user.
  Future<List<Order>> fetchUserOrders(String slug, {bool isUserId = false}) async {
    final response = await client.get('/orders/${isUserId ? 'userId' : 'user'}/$slug');
    final body = HttpHelpers.parseResponse<List<Map<String, dynamic>>>(response.body);

    return body.data.map(Order.fromMap).toList();
  }

  /// Get a specific order
  Future<OrderWithUser> fetchOrder(String slug) async {
    final response = await client.get('/order/$slug');
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    return OrderWithUser.fromMap(body.data);
  }

  /// Fetch the top 5 buy and top 5 sell orders for a specific item, exclusively from online users.
  /// Orders are sorted by price.
  Future<TopOrders> fetchTopOrders(String slug, {OrderFilter? filter}) async {
    final response = await client.get('/orders/item/$slug/top', queryParameters: filter?.toQuery());
    final body = HttpHelpers.parseResponse<Map<String, dynamic>>(response.body);

    final buy = List<Map<String, dynamic>>.from(body.data['buy'] as List<dynamic>);
    final sell = List<Map<String, dynamic>>.from(body.data['sell'] as List<dynamic>);

    return (buy: buy.map(OrderWithUser.fromMap).toList(), sell: sell.map(OrderWithUser.fromMap).toList());
  }
}
