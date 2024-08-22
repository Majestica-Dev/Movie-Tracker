import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

class MovieEmptyCover extends StatelessWidget {
  final IconData? icon;

  final String title;

  final bool isActive;

  final VoidCallback? onTap;

  final MovieCoverSize coverSize;

  const MovieEmptyCover({
    this.icon,
    this.title = '',
    this.isActive = true,
    this.coverSize = MovieCoverSize.S,
    this.onTap,
    super.key,
  });

  const MovieEmptyCover.addingMovie({
    required this.onTap,
    this.icon = PhosphorIconsRegular.filmReel,
    this.title = 'Add Movie',
    this.isActive = true,
    this.coverSize = MovieCoverSize.S,
    super.key,
  });

  const MovieEmptyCover.inactive({
    this.onTap,
    this.title = '',
    this.isActive = false,
    this.icon,
    super.key,
    this.coverSize = MovieCoverSize.S,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        height: coverSize.height,
        width: coverSize.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? t.colors.primaryLowContainer : null,
          borderRadius: BorderRadius.circular(t.borderRadius.r4),
          border: Border.all(
            color: isActive
                ? t.colors.primaryHighContainer
                : t.colors.neutralLowContent,
          ),
        ),
        child: isActive
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    PhosphorIcon(
                      icon!,
                      color: t.colors.primaryHighContainer,
                      size: 24,
                    ),
                  SizedBox(height: t.spacing.x1),
                  Text(
                    title,
                    style: t.textTheme.bodyXSBold.copyWith(
                      color: t.colors.primaryHighContainer,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
