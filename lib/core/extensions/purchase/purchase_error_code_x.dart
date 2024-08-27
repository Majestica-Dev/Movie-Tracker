import 'package:purchases_flutter/purchases_flutter.dart';

extension PurchaseErrorCodeX on PurchasesErrorCode {
  bool get isUserRelatedError {
    return switch (this) {
      PurchasesErrorCode.unknownError => false,
      PurchasesErrorCode.purchaseCancelledError => true,
      PurchasesErrorCode.storeProblemError => false,
      PurchasesErrorCode.purchaseNotAllowedError => true,
      PurchasesErrorCode.purchaseInvalidError => false,
      PurchasesErrorCode.productNotAvailableForPurchaseError => false,
      PurchasesErrorCode.productAlreadyPurchasedError => true,
      PurchasesErrorCode.receiptAlreadyInUseError => false,
      PurchasesErrorCode.invalidReceiptError => false,
      PurchasesErrorCode.missingReceiptFileError => false,
      PurchasesErrorCode.networkError => true,
      PurchasesErrorCode.invalidCredentialsError => false,
      PurchasesErrorCode.unexpectedBackendResponseError => false,
      PurchasesErrorCode.receiptInUseByOtherSubscriberError => false,
      PurchasesErrorCode.invalidAppUserIdError => true,
      PurchasesErrorCode.operationAlreadyInProgressError => false,
      PurchasesErrorCode.unknownBackendError => false,
      PurchasesErrorCode.invalidAppleSubscriptionKeyError => false,
      PurchasesErrorCode.ineligibleError => false,
      PurchasesErrorCode.insufficientPermissionsError => false,
      PurchasesErrorCode.paymentPendingError => false,
      PurchasesErrorCode.invalidSubscriberAttributesError => false,
      PurchasesErrorCode.logOutWithAnonymousUserError => true,
      PurchasesErrorCode.configurationError => false,
      PurchasesErrorCode.unsupportedError => false,
      PurchasesErrorCode.emptySubscriberAttributesError => false,
      PurchasesErrorCode.productDiscountMissingIdentifierError => false,
      PurchasesErrorCode.unknownNonNativeError => false,
      PurchasesErrorCode
            .productDiscountMissingSubscriptionGroupIdentifierError =>
        false,
      PurchasesErrorCode.customerInfoError => false,
      PurchasesErrorCode.systemInfoError => false,
      PurchasesErrorCode.beginRefundRequestError => false,
      PurchasesErrorCode.productRequestTimeout => true,
      PurchasesErrorCode.apiEndpointBlocked => false,
      PurchasesErrorCode.invalidPromotionalOfferError => false,
      PurchasesErrorCode.offlineConnectionError => true,
    };
  }
}
