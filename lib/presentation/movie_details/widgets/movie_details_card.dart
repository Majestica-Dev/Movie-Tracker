import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/extensions/movie/movie_x.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/formatters/date_time_formater.dart';

class MovieDetailsCard extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCard({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Container(
      padding: EdgeInsets.all(t.spacing.x4),
      decoration: BoxDecoration(
        color: t.colors.surface,
        borderRadius: BorderRadius.circular(t.spacing.x3),
      ),
      child: Column(
        children: [
          if (movie.releaseDate != null)
            Row(
              children: [
                Text(
                  'Release Date',
                  style: t.textTheme.bodySRegular
                      .copyWith(color: t.colors.neutralHighContent),
                ),
                const Spacer(),
                Text(
                  DateTimeFormatter.dayMonthYear(movie.releaseDate!),
                  style: t.textTheme.bodySRegular.h140
                      .copyWith(color: t.colors.neutralHighContent),
                ),
              ],
            ),
          if (movie.ratingPercentAsString != null)
            Row(
              children: [
                Text(
                  'User Score',
                  style: t.textTheme.bodySRegular
                      .copyWith(color: t.colors.neutralHighContent),
                ),
                const Spacer(),
                Text(
                  movie.ratingPercentAsString!,
                  style: t.textTheme.bodySRegular.h140
                      .copyWith(color: t.colors.neutralHighContent),
                ),
              ],
            )
        ],
      ),
    );
  }
}
