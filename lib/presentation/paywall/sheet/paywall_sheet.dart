import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/domain/purchases/entities/paywal_from.dart';
import 'package:movie_tracker/presentation/paywall/sheet/listeners/paywall_sheet_listener.dart';
import 'package:movie_tracker/presentation/paywall/sheet/widgets/paywall_sheet_body.dart';
import 'package:movie_tracker/presentation/paywall/sheet/widgets/paywall_sheet_header.dart';

abstract final class PaywallSheet {
  static void show(
    BuildContext context, {
    required PaywallFrom paywalFrom,
  }) {
    MDSBottomSheet.show(
      enableDrag: false,
      expand: true,
      context: context,
      useSafeArea: true,
      bodyPadding: EdgeInsets.zero,
      header: const PaywallSheetHeader(),
      body: PaywallSheetListener(
        child: PaywallSheetBody(
          paywallFrom: paywalFrom,
        ),
      ),
    );
  }
}
