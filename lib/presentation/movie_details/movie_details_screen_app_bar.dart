import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/movie_details/modals/remove_movie_modal.dart';

class MovieDetailsScreenAppBar extends MDSAppBar {
  final String movieId;

  const MovieDetailsScreenAppBar({
    required this.movieId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return MDSAppBar(
      trailing: DropDown<int>(
        onSelected: (i) {
          if (i == 0) {
            RemoveMovieModal.show(context, id: movieId);
          }
        },
        offset: Offset(0, t.spacing.x2),
        items: [
          DropDownItemData(
            title: 'Remove Movie',
            icon: const PhosphorIcon(PhosphorIconsRegular.trash),
            value: 0,
          ),
        ],
        child: PhosphorIcon(
          color: t.colors.neutralHighContent,
          PhosphorIconsRegular.dotsThreeCircle,
        ),
      ),
      leading: GestureDetector(
        onTap: () => context.router.maybePop(),
        child: PhosphorIcon(
          PhosphorIconsRegular.arrowLeft,
          size: 24,
          color: t.colors.neutralHighContent,
        ),
      ),
      forceMaterialTransparency: true,
    );
  }
}
