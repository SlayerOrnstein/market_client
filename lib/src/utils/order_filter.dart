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
    int? rank,
    int? rankLt,
    int? charges,
    int? chargesLt,
    int? amberStars,
    int? amberStarsLt,
    int? cyanStars,
    int? cyanStarsLt,
    this.subtype,
  }) : rank = _validate(rank, 'rank'),
       rankLt = _validate(rankLt, 'rankLt'),
       charges = _validate(charges, 'charges'),
       chargesLt = _validate(chargesLt, 'chargesLt'),
       amberStars = _validate(amberStars, 'amberStarts'),
       amberStarsLt = _validate(amberStarsLt, 'amberLt'),
       cyanStars = _validate(cyanStars, 'cyanStars'),
       cyanStarsLt = _validate(cyanStarsLt, 'cyanstarsLt');

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
  final int? amberStarsLt;

  /// Filters orders by the **exact** number of cyan stars.
  final int? cyanStars;

  /// Filters orders where the number of cyan stars is **less than** the
  /// specified value.
  final int? cyanStarsLt;

  /// Controls the filtering of orders based on item [subtype] field.
  final String? subtype;

  static int? _validate(int? value, String name) {
    if (value?.isNegative ?? false) {
      throw ArgumentError.value(value, name, 'Must be non-negative');
    }

    return value;
  }
}
