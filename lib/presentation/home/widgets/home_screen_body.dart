import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/widgets/find_perfect_movie_card.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_tab_bar.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_tab_bar_view.dart';
import 'package:movie_tracker/presentation/home/widgets/movies_grid_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return DefaultTabController(
      length: 3,
      child: BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
        builder: (context, movieWatcherState) {
          return movieWatcherState.maybeMap(
            orElse: () => const SizedBox(),
            succeeded: (succeededState) {
              final Map<WatchStatus, Movies> moviesMap =
                  succeededState.moviesMap;

              final allMovies = succeededState.allMovies;

              if (allMovies.isEmpty) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const FindPerfectMovieCard(),
                        SizedBox(height: t.spacing.x4),
                        MoviesGridView(
                          physics: const NeverScrollableScrollPhysics(),
                          watchStatus: null,
                          movies: succeededState.allMovies,
                        ),
                      ],
                    ),
                  ),
                );
              }

              return Column(
                children: [
                  const HomeScreenTabBar(),
                  SizedBox(height: t.spacing.x4),
                  Expanded(
                    child: HomeScreenTabBarView(
                      allMovies: allMovies,
                      moviesMap: moviesMap,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
