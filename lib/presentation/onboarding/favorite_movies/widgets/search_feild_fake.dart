import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/home/search/movie_search_sheet.dart';

class SearchFeildFake extends StatefulWidget {
  const SearchFeildFake({
    super.key,
  });

  @override
  State<SearchFeildFake> createState() => _SearchFeildFakeState();
}

class _SearchFeildFakeState extends State<SearchFeildFake> {
  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => MovieSearchSheet.show(
        context,
        watchStatus: WatchStatus.toWatch,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: t.spacing.x3,
          vertical: t.spacing.x2,
        ),
        decoration: BoxDecoration(
          color: t.colors.neutralLowContainer,
          borderRadius: BorderRadius.circular(t.borderRadius.all),
        ),
        child: Row(
          children: [
            PhosphorIcon(
              PhosphorIcons.magnifyingGlass(
                PhosphorIconsStyle.bold,
              ),
              color: t.colors.neutralMedContent,
              size: 16.9,
            ),
            SizedBox(width: t.spacing.x1),
            Expanded(
                child: Text(
              'Search...',
              style: t.textTheme.bodyMRegular.copyWith(
                color: t.colors.neutralLowContainer,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
