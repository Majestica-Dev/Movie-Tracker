import 'package:auto_route/auto_route.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';

import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/core/extensions/movie/movie_x.dart';
import 'package:movie_tracker/core/extensions/movie/watch_status_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

class MovieSaveButton extends StatelessWidget {
  final WatchStatus watchStatus;
  final bool isFavorite;
  final Movie movie;

  const MovieSaveButton({
    required this.watchStatus,
    required this.movie,
    required this.isFavorite,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      buttonSize: MDSButtonSize.L,
      expand: true,
      text: 'Add to ${watchStatus.listName}',
      leftIcon: const PhosphorIcon(PhosphorIconsRegular.filmReel),
      disabled:
          context.read<MovieWatcherBloc>().state.getMovieById(movie.id) != null,
      onPressed: () {
        context.read<MovieSaverBloc>().add(
              MovieSaverEvent.save(
                movie: movie.copyWith(
                  status: watchStatus,
                  isFavorite: isFavorite,
                ),
              ),
            );

        context.router.maybePop();
      },
    );
  }
}
