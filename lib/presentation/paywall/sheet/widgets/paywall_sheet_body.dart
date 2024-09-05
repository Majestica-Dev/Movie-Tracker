import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/paywall/sheet/widgets/paywall_sheet_body_header.dart';
import 'package:movie_tracker/presentation/paywall/sheet/widgets/paywall_sheet_bottom_section.dart';

class PaywallSheetBody extends StatelessWidget {
  const PaywallSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme.copyWith(colors: MTColors.glossy);

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return MDSTheme(
      data: t,
      child: Column(
        children: [
          SizedBox(height: isSmallScreen ? 0 : 30),
          const PaywallSheetBodyHeader(),
          const Expanded(
            child: PaywallSheetBottomSection(),
          )
        ],
      ),
    );
  }
}
