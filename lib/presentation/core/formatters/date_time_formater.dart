import 'package:intl/intl.dart';

abstract final class DateTimeFormatter {
  static String dayMonthYear(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }
}
