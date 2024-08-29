import 'package:intl/intl.dart';

abstract final class CurrencyFormatter {
  static String formatCurrencySymbol(String currencyCode) {
    try {
      String? symbol = NumberFormat.simpleCurrency(
        locale: 'en_US',
        name: currencyCode,
      ).currencySymbol;

      return symbol;
    } catch (e) {
      return currencyCode;
    }
  }
}
