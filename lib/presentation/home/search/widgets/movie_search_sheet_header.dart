import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class MovieSearchSheetHeader extends StatelessWidget {
  const MovieSearchSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return MDSBottomSheetHeader(
      title: const Text('Add a movie'),
      showBorderLine: false,
      centerTitle: false,
      trailing: MDSTextButton(
        buttonSize: MDSTextButtonSize.L,
        colorMode: ColorMode.neutral,
        leftIcon: const PhosphorIcon(
          PhosphorIconsRegular.x,
        ),
        onPressed: () {
          context.router.maybePop();
        },
      ),
    );
  }
}
