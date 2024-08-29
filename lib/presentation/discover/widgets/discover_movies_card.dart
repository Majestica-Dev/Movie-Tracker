import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';
import 'package:movie_tracker/presentation/discover/bottom_sheet/discover_movies_sheet.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';
import 'package:movie_tracker/presentation/discover/widgets/movies_stack.dart';

class DiscoverMoviesCard extends StatelessWidget {
  final DiscoverMovies discoverMovies;

  const DiscoverMoviesCard({
    required this.discoverMovies,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () {
        if (context.hasPremium) {
          DiscoverMoviesSheet.show(
            context,
            discoverMovies: discoverMovies,
          );
        } else {
          const MDSToast(message: 'Discover is premium')
              .show(); // TODO: show Paywall // TODO: show Paywall
        }
      },
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: t.colors.surface,
            borderRadius: BorderRadius.circular(
              t.borderRadius.r4,
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: t.spacing.x4),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: t.spacing.x4),
                    Text(
                      discoverMovies.genre,
                      style: t.textTheme.headlineBold.copyWith(
                        color: t.colors.neutralHighContent,
                        fontFamily: FontFamily.newYork,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Spacer(),
                    Text(
                      discoverMovies.description,
                      style: t.textTheme.bodySRegular.copyWith(
                        color: t.colors.neutralHighContent,
                        fontFamily: FontFamily.newYork,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: t.spacing.x4),
                  ],
                ),
              ),
              SizedBox(
                width: 180,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: MoviesStack(movies: discoverMovies.movies),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
