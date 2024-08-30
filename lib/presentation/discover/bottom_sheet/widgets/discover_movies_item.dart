import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/core/formatters/date_time_formater.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

class DiscoverMoviesItem extends StatelessWidget {
  final Movie movie;

  final int movieNumber;

  const DiscoverMoviesItem({
    required this.movie,
    required this.movieNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () {
        final isMovieAdded =
            context.read<MovieWatcherBloc>().state.getMovieById(movie.id) !=
                null;

        if (isMovieAdded) {
          context.router.push(
            MovieDetailsRoute(id: movie.id),
          );
        } else {
          context.router.push(
            MovieOverviewRoute(
              movie: movie,
              isFromAi: false,
              watchStatus: WatchStatus.toWatch,
            ),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.all(t.spacing.x3),
        decoration: BoxDecoration(
          color: t.colors.background,
          borderRadius: BorderRadius.circular(t.borderRadius.r4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MovieCoverSize.XS.height,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieCover(
                    showTitle: false,
                    movie: movie,
                    movieCoverSize: MovieCoverSize.XS,
                    chacheImage: true,
                  ),
                  SizedBox(width: t.spacing.x3),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: t.spacing.x1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: t.textTheme.bodyMRegular.copyWith(
                              color: t.colors.neutralHighContent,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          if (movie.releaseDate != null) ...[
                            SizedBox(height: t.spacing.x2),
                            Text(
                              DateTimeFormatter.dayMonthYear(
                                  movie.releaseDate!),
                              style: t.textTheme.bodySRegular.copyWith(
                                color: t.colors.neutralMedContent,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: t.spacing.x3),
                  Text(
                    movieNumber.toString(),
                    style: t.textTheme.titleLargeBold.copyWith(
                      color: t.colors.primaryHighContainer,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: t.spacing.x3),
            if (movie.description != null)
              Text(
                movie.description!.trim(),
                style: t.textTheme.bodySRegular.copyWith(
                  color: t.colors.neutralHighContent,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}
