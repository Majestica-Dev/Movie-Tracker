import '../../utils/currency_formatter.dart';
import 'package:purchases_flutter/models/store_product_wrapper.dart';

extension StoreProductX on StoreProduct {
  String get formattedCurrency =>
      CurrencyFormatter.formatCurrencySymbol(currencyCode);

  //! Please use  only for annual products

  //! कृपया केवल वार्षिक उत्पादों के लिए उपयोग करें

  String get perMonthPriceAsString =>
      formattedCurrency + (price / 12).toStringAsFixed(2);

  String get priceAsString => formattedCurrency + price.toStringAsFixed(2);
}
