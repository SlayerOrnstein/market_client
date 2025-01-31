import 'package:dart_mappable/dart_mappable.dart';

part 'order_filter.mapper.dart';

/// {@template order_filter}
/// Query parameters for [fetchItemOrders()]
///
/// All **less than** values take precedence over *exact* values
/// {@endtemplate}
@MappableClass()
class OrderFilter with OrderFilterMappable {
  /// {@macro order_template}
  OrderFilter({
    this.rank,
    this.rankLt,
    this.charges,
    this.chargesLt,
    this.amberStars,
    this.amberLt,
    this.cyanStars,
    this.cyanStarsLt,
    this.subtype,
  });

  /// Filter orders by the **exact** rank specfied.
  final int? rank;

  /// Filters orders with a rank **less than** the specfied rank.
  final int? rankLt;

  /// Filters orders by the **exact** number of charges left.
  final int? charges;

  /// Filtes orders where the number of charges left is **less than** the
  /// specified value.
  final int? chargesLt;

  /// Filters orders by the **exact** number of amber stars.
  final int? amberStars;

  /// Filters orders where the number of amber stars is **less than** the
  /// specified value.
  final int? amberLt;

  /// Filters orders by the **exact** number of cyan stars.
  final int? cyanStars;

  /// Filters orders where the number of cyan stars is **less than** the
  /// specified value.
  final int? cyanStarsLt;

  /// Controls the filtering of orders based on item [subtype] field.
  final String? subtype;
}
