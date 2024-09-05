import 'package:auto_route/auto_route.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/scafold.dart';
import 'package:movie_tracker/presentation/movie_details/details_screen/widgets/movie_details_screen_app_bar.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_details_card.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_overview.dart';
import 'package:movie_tracker/presentation/movie_details/details_screen/widgets/movie_status_chooser.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_trailer_launch_button.dart';

@RoutePage()
class MovieDetailsScreen extends StatelessWidget {
  final String id;

  const MovieDetailsScreen({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return BlocProvider<MovieActorBloc>(
      create: (context) => Locator.movieActorBloc,
      child: MTScafold(
        appBar: MovieDetailsScreenAppBar(
          movieId: id,
        ),
        body: BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
          builder: (context, watcherState) {
            return watcherState.maybeMap(
              orElse: () => const SizedBox(),
              succeeded: (watcherSucceededState) {
                final Movie? movie = watcherSucceededState.getMovieById(id);

                if (movie == null) return const SizedBox();

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MovieOverview(movie: movie),
                        SizedBox(height: t.spacing.x6),
                        MovieStatusChooser(
                          onChanged: (value) {
                            context.read<MovieActorBloc>().add(
                                  MovieActorEvent.updateStatus(
                                    id: id,
                                    status: value,
                                  ),
                                );
                          },
                          status: movie.status,
                        ),
                        SizedBox(height: t.spacing.x6),
                        MovieTrailerLaunchButton(
                          trailerLink: movie.trailerLink,
                          movieTitle: movie.title,
                        ),
                        SizedBox(height: t.spacing.x6),
                        MovieDetailsCard(movie: movie),
                        SizedBox(height: t.spacing.x6),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
