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
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

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
              context.router.push(MovieOverviewRoute(movie: movie));
            }

            // TODO : impl
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
                    child: Text(
                      movie.title,
                      style: t.textTheme.bodyMRegular
                          .copyWith(color: t.colors.neutralHighContent),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
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
                    buttonSize: MDSButtonSize.S,
                    onPressed: () async {
                      context.read<MovieSaverBloc>().add(MovieSaverEvent.save(
                          movie: movie.copyWith(status: watchStatus)));
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
