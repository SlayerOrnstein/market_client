import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

/// {@template date}
/// Converts Darts 'Z' datetime to one with an offset.
///
/// This is mainly due to how Warframe Market stores it's own datetime.
/// {@endtemplate}
class DateTimeWithOffset implements JsonConverter<DateTime, String> {
  /// {@macro date}
  const DateTimeWithOffset();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return _formatDateTimeWithOffset(object);
  }

  String _formatDateTimeWithOffset(DateTime dateTime) {
    final formattedDate =
        DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').format(dateTime);
    final offset = dateTime.timeZoneOffset;
    final sign = offset.isNegative ? '-' : '+';
    final hours = offset.inHours.abs().toString().padLeft(2, '0');
    final minutes = (offset.inMinutes.abs() % 60).toString().padLeft(2, '0');

    return '$formattedDate$sign$hours:$minutes';
  }
}
