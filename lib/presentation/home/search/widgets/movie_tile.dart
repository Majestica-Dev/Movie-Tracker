import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/core/extensions/movie/movie_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';

import 'package:movie_tracker/presentation/core/formatters/date_time_formater.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';
import 'package:movie_tracker/presentation/paywall/sheet/paywall_sheet.dart';

class MovieTile extends StatelessWidget {
  final WatchStatus? watchStatus;
  final Movie movie;

  const MovieTile({
    required this.movie,
    required this.watchStatus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
      builder: (context, movieWatcherState) {
        final isMovieAdded = movieWatcherState.getMovieById(movie.id) != null;

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (isMovieAdded) {
              context.router.push(
                MovieDetailsRoute(
                  id: movie.id,
                ),
              );
            } else {
              context.router.push(MovieOverviewRoute(
                movieAiRecFormState: null,
                movie: movie,
                watchStatus: watchStatus,
                isFromAi: false,
              ));
            }
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MovieCoverSize.XS.height,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MovieCover(
                  showTitle: false,
                  movie: movie,
                  movieCoverSize: MovieCoverSize.XS,
                  chacheImage: false,
                ),
                SizedBox(width: t.spacing.x2),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: t.spacing.x1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title,
                          style: t.textTheme.bodyMRegular
                              .copyWith(color: t.colors.neutralHighContent),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        if (movie.releaseDate != null)
                          Text(
                            DateTimeFormatter.dayMonthYear(movie.releaseDate!),
                            style: t.textTheme.bodySBold.copyWith(
                              color: t.colors.neutralMedContent,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: t.spacing.x4),
                Visibility(
                  visible: !isMovieAdded,
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: PrimaryButton(
                    text: "Add",
                    rightIcon: PhosphorIcon(
                      PhosphorIcons.plus(),
                    ),
                    buttonSize: MDSButtonSize.XS,
                    onPressed: () async {
                      if (context.addMovieEnabled) {
                        context.read<MovieSaverBloc>().add(MovieSaverEvent.save(
                            movie: movie.copyWith(status: watchStatus)));
                      } else {
                        PaywallSheet.show(context);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
