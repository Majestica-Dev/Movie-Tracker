import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class MovieLikeButton extends StatelessWidget {
  final bool isFavorite;
  final ValueChanged<bool> onChange;

  const MovieLikeButton({
    required this.isFavorite,
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!isFavorite) {
          MDSHapticFeedback.successNoitifaction();
        }
        onChange(!isFavorite);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: PhosphorIcon(
          PhosphorIcons.heart(
            isFavorite ? PhosphorIconsStyle.fill : PhosphorIconsStyle.regular,
          ),
          size: 24,
          color: isFavorite
              ? t.colors.primaryHighContent
              : t.colors.neutralHighContent,
        ),
      ),
    );
  }
}
