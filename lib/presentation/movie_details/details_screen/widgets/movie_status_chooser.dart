import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/extensions/movie/watch_status_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

class MovieStatusChooser extends StatelessWidget {
  final WatchStatus status;
  final ValueChanged<WatchStatus> onChanged;
  final Color? backColor;

  const MovieStatusChooser({
    required this.onChanged,
    required this.status,
    this.backColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Container(
      padding: EdgeInsets.all(t.spacing.x05),
      decoration: BoxDecoration(
        color: backColor ?? t.colors.surface,
        borderRadius: BorderRadius.circular(t.borderRadius.all),
      ),
      child: Row(
        children: [
          for (int i = 0; i < WatchStatus.values.length; i++) ...[
            Expanded(
              child: _MovieStatusChooserItem(
                isActive: WatchStatus.values[i] == status,
                title: WatchStatus.values[i].title,
                onChanged: () => onChanged(WatchStatus.values[i]),
              ),
            ),
            if (i != WatchStatus.values.length - 1)
              SizedBox(width: t.spacing.x1),
          ]
        ],
      ),
    );
  }
}

class _MovieStatusChooserItem extends StatelessWidget {
  final String title;

  final VoidCallback onChanged;

  final bool isActive;

  const _MovieStatusChooserItem({
    required this.title,
    required this.onChanged,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () async {
        if (isActive) return;

        MDSHapticFeedback.selectionClick();

        onChanged();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: t.spacing.x2,
        ),
        decoration: BoxDecoration(
          color: isActive ? t.colors.primaryHighContainer : Colors.transparent,
          borderRadius:
              isActive ? BorderRadius.circular(t.borderRadius.all) : null,
        ),
        child: Text(
          title,
          style: t.textTheme.bodySRegular.copyWith(
            color: isActive
                ? t.colors.highContainerContent
                : t.colors.neutralMedContent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
