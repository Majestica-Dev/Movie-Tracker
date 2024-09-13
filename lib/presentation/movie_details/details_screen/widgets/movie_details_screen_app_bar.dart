import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/core/extensions/movie/movie_x.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:movie_tracker/presentation/movie_details/widgets/movie_like_button.dart';

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
      trailing: BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            succeeded: (watcherSucceededState) {
              final Movie? movie = watcherSucceededState.getMovieById(movieId);

              if (movie == null) return const SizedBox();

              return MovieLikeButton(
                isFavorite: movie.isFavorite,
                onChange: (value) {
                  context.read<MovieActorBloc>().add(
                        MovieActorEvent.updateIsFavorite(
                          movie: movie.copyWith(isFavorite: value),
                        ),
                      );
                },
              );
            },
          );
        },
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
