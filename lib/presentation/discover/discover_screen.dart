import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/widgets/find_perfect_movie_card.dart';

import 'package:movie_tracker/presentation/discover/data/discover_movies_data.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';
import 'package:movie_tracker/presentation/discover/widgets/discover_movies_card.dart';

@RoutePage()
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.only(
        top: 54,
        left: t.spacing.x4,
        right: t.spacing.x4,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: t.spacing.x4),
        itemCount: discoverMoviesData.length + 2,
        itemBuilder: (context, index) {
          // Title
          if (index == 0) {
            return Text(
              'Discover Movies',
              style: t.textTheme.title1Regular.copyWith(
                color: t.colors.neutralHighContent,
              ),
            );
          }

          // Find Movie card
          if (index == 1) {
            return Padding(
              padding: EdgeInsets.only(top: t.spacing.x6),
              child: const FindPerfectMovieCard(),
            );
          }

          // Discover Movies
          final DiscoverMovies discoverMovies = discoverMoviesData[index - 2];

          return Padding(
            padding: EdgeInsets.only(
              top: index == 2 ? t.spacing.x6 : t.spacing.x3,
            ),
            child: DiscoverMoviesCard(
              discoverMovies: discoverMovies,
            ),
          );
        },
      ),
    );
  }
}
