import 'package:equatable/equatable.dart';
import 'package:market_client/src/models/models.dart';

/// {@template order_set}
/// A set of selling and buying orders for a specfic item or recent items.
/// {@endtemplate}
class OrderSet<T extends OrderCommon> extends Equatable {
  /// {@macro order_set}
  const OrderSet({required this.selling, required this.buying});

  /// A list of selling orders
  final List<T> selling;

  /// A list of buying orders.
  final List<T> buying;

  @override
  List<Object?> get props => [selling, buying];
}
