import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MTScafold extends StatelessWidget {
  final Widget body;

  final Color? backgroundColor;

  final PreferredSizeWidget? appBar;

  final bool unfocusOnTap;

  final bool addSafeArea;

  final bool? resizeToAvoidBottomInset;

  const MTScafold({
    this.appBar,
    required this.body,
    this.backgroundColor,
    this.unfocusOnTap = true,
    this.addSafeArea = false,
    this.resizeToAvoidBottomInset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () {
        if (unfocusOnTap) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: appBar,
        backgroundColor: backgroundColor ?? t.colors.background,
        body: addSafeArea ? SafeArea(child: body) : body,
      ),
    );
  }
}
