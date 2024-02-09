import 'package:intl/intl.dart';

final formatter = NumberFormat.decimalPattern('en_US');

extension DoubleExtension on double {
  String get formattedWithCommas => formatter.format(this);
}

extension StringExtension on DateTime {
  String get dateString =>
      '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';

  String get timeString =>
      '${hour.toString().padLeft(2, '0')}:${minute..toString().padLeft(2, '0')}';
}
