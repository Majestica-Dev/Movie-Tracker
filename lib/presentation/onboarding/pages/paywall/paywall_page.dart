import 'package:flutter/material.dart';
import 'package:movie_tracker/presentation/onboarding/pages/paywall/listener/paywall_page_listener.dart';
import 'package:movie_tracker/presentation/paywall/widgets/paywall_body.dart';

class PaywallPage extends StatelessWidget {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaywallPageListener(
      child: PaywallBody(
        isFromOnboarding: true,
      ),
    );
  }
}
