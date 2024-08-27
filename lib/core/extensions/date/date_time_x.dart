extension DateTimeX on DateTime {
  bool get isToday {
    DateTime now = DateTime.now();

    return year == now.year && month == now.month && day == now.day;
  }
}
