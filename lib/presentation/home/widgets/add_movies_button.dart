import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/home/search/movie_search_sheet.dart';

class AddMoviesButton extends StatelessWidget {
  const AddMoviesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () => MovieSearchSheet.show(
        context,
        isFavorite: true,
      ),
      child: Container(
        height: 162,
        margin: EdgeInsets.only(bottom: t.spacing.x4),
        padding: EdgeInsets.symmetric(
          horizontal: t.spacing.x8,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: t.colors.primaryHighContent),
            color: t.colors.primaryLowContainer,
            borderRadius: BorderRadius.circular(t.spacing.x3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhosphorIcon(
              PhosphorIconsRegular.heart,
              size: 32,
              color: t.colors.primaryHighContainer,
            ),
            SizedBox(height: t.spacing.x1),
            Text(
              'Add 5 movies to your favorites list to discover your perfect match!',
              style: t.textTheme.bodyMBold
                  .copyWith(color: t.colors.primaryHighContent),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
