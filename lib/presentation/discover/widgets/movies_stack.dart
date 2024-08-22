import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MoviesStack extends StatelessWidget {
  final List<Movie> movies;

  const MoviesStack({
    required this.movies,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(t.borderRadius.r4),
      ),
      child: SizedBox(
        height: 162,
        width: 156,
        child: Stack(
          children: [
            Positioned(
              bottom: -23,
              right: 0,
              child: MovieCover(
                chacheImage: true,
                movie: movies[1],
                showTitle: false,
              ),
            ),
            Positioned(
              bottom: -10,
              left: 37,
              child: MovieCover(
                chacheImage: true,
                movie: movies[2],
                showTitle: false,
              ),
            ),
            MovieCover(
              chacheImage: true,
              movie: movies.first,
              showTitle: false,
            )
          ],
        ),
      ),
    );
  }
}
