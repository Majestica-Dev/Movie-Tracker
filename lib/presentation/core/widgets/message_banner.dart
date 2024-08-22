import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MessageBanner extends StatelessWidget {
  final String title;

  final Widget? icon;

  const MessageBanner({
    required this.title,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: t.colors.background,
        borderRadius: BorderRadius.circular(t.borderRadius.r4),
        border: Border.all(
          color: t.colors.neutralLowContent,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: t.spacing.x6,
          horizontal: t.spacing.x4,
        ),
        child: Center(
          child: Column(
            children: [
              IconTheme(
                data: const IconThemeData(size: 36),
                child: icon ?? const SizedBox(),
              ),
              SizedBox(
                height: icon != null ? t.spacing.x2 : null,
              ),
              Text(
                title,
                style: t.textTheme.bodyMRegular.copyWith(
                  color: t.colors.neutralHighContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
