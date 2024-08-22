import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/widgets/grid_view/auto_height_grid.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_empty_cover.dart';
import 'package:movie_tracker/presentation/home/search/movie_search_sheet.dart';

class MoviesGridView extends StatelessWidget {
  final Movies movies;
  final WatchStatus? watchStatus;
  final ScrollPhysics? physics;

  const MoviesGridView({
    required this.movies,
    required this.watchStatus,
    this.physics,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return ResponsiveGridView(
      itemCount: movies.isEmpty ? 6 : movies.length + 1,
      crossAxisCount: 3,
      shrinkWrap: true,
      itemWidth: MovieCoverSize.S.width,
      physics: physics ?? const BouncingScrollPhysics(),
      mainAxisSpacing: t.spacing.x4,
      builder: (context, index) {
        // Movies are empty
        if (movies.isEmpty && index == 0) {
          return MovieEmptyCover.addingMovie(
            onTap: () => MovieSearchSheet.show(
              context,
              watchStatus: watchStatus,
            ),
          );
        }

        if (movies.isEmpty) {
          return const MovieEmptyCover.inactive();
        }

        if (index == movies.length) {
          return MovieEmptyCover.addingMovie(
            onTap: () => MovieSearchSheet.show(
              context,
              watchStatus: watchStatus,
            ),
          );
        }

        return GestureDetector(
          onTap: () {
            context.router.push(MovieDetailsRoute(id: movies[index].id));
          },
          child: MovieCover(
            chacheImage: true,
            movieCoverSize: MovieCoverSize.S,
            movie: movies[index],
          ),
        );
      },
    );
  }
}
