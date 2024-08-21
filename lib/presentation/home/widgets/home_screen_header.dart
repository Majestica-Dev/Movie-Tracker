import 'package:movie_tracker/presentation/home/search/movie_search_sheet.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Watchlist',
          style: t.textTheme.title2Bold.copyWith(
            color: t.colors.neutralHighContent,
          ),
        ),
        MDSTextButton(
          onPressed: () => MovieSearchSheet.show(context, watchStatus: null),
          text: 'Add Movie',
          buttonSize: MDSTextButtonSize.M,
          rightIcon: const PhosphorIcon(
            PhosphorIconsBold.plus,
          ),
        ),
      ],
    );
  }
}
