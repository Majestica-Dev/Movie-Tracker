import 'dart:developer';

import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/widgets/movie/cover/movie_cover.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/animated_movie_description.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_vote_average_stars.dart';

class MovieOverview extends StatelessWidget {
  final Movie movie;

  const MovieOverview({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    log(movie.description.toString());

    return Column(
      children: [
        MovieCover(
          showTitle: false,
          movie: movie,
          movieCoverSize: MovieCoverSize.L,
          chacheImage: true,
        ),
        SizedBox(height: t.spacing.x6),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                movie.title,
                style: t.textTheme.title1Regular.copyWith(
                  color: t.colors.neutralHighContent,
                ),
                textAlign: TextAlign.center,
              ),
              if (movie.rating != null) ...[
                SizedBox(height: t.spacing.x3),
                MovieVoteAverageStars(
                  itemPadding: 1,
                  rating: movie.rating!,
                ),
                SizedBox(height: t.spacing.x3),
              ],
              if (movie.description != null) ...[
                SizedBox(height: t.spacing.x3),
                AnimatedMovieDescription(description: movie.description!),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
