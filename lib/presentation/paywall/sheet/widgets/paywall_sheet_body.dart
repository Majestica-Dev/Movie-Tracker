import 'package:flutter/material.dart';
import 'package:movie_tracker/presentation/paywall/sheet/listeners/paywall_sheet_listener.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_body.dart';

class PaywallSheetBody extends StatelessWidget {
  const PaywallSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaywallSheetListener(child: PaywallBody());
  }
}
