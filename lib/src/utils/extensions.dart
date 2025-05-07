import 'package:market_client/market_client.dart';

/// Some usefule extensions to help work with [List<T extends BaseOrder>] easier
extension ListBaseOrders<T extends BaseOrder> on List<T> {
  /// Get a list with only buy orders.
  Iterable<T> get buyOrders => where((o) => o.type == OrderType.buy);

  /// Get a list with only sell orders.
  Iterable<T> get sellOrders => where((o) => o.type == OrderType.sell);
}

/// Some usefule extensions to help work with [List<T extends BaseOrder>] easier
extension ListOrdersWithUser on List<OrderWithUser> {
  /// Get a list where [User.status] equals [status]
  Iterable<OrderWithUser> whereStatus(UserStatus status) => where((o) => o.user.status == status);
}
