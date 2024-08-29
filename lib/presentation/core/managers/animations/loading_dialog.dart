import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

abstract class LoadingDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(
              radius: 32,
              color: context.mdsTheme.colors.neutralHighContent,
            ),
          ],
        );
      },
    );
  }
}
