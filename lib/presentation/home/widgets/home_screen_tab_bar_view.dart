import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/widgets/find_perfect_movie_card.dart';
import 'package:movie_tracker/presentation/home/widgets/add_movies_button.dart';
import 'package:movie_tracker/presentation/home/widgets/movies_grid_view.dart';

class HomeScreenTabBarView extends StatelessWidget {
  final Movies allMovies;
  final Map<WatchStatus, Movies> moviesMap;

  const HomeScreenTabBarView({
    required this.allMovies,
    required this.moviesMap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return TabBarView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const FindPerfectMovieCard(),
                SizedBox(height: t.spacing.x4),
                if (allMovies.length < 5) const AddMoviesButton(),
                MoviesGridView(
                  physics: const NeverScrollableScrollPhysics(),
                  watchStatus: null,
                  movies: allMovies,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
          child: MoviesGridView(
            watchStatus: WatchStatus.toWatch,
            movies: moviesMap[WatchStatus.toWatch] ?? [],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
          child: MoviesGridView(
            watchStatus: WatchStatus.watched,
            movies: moviesMap[WatchStatus.watched] ?? [],
          ),
        ),
      ],
    );
  }
}
