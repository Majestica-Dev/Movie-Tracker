import "package:movie_tracker/presentation/discover/bottom_sheet/widgets/discover_movies_item.dart";
import "package:movie_tracker/presentation/discover/models/discover_movie.dart";

import "../../../gen/fonts.gen.dart";

import "package:flutter/material.dart";

import "package:auto_route/auto_route.dart";
import "package:majestica_ds/icons/icons.dart";
import "package:majestica_ds/majestica_ds.dart";

class DiscoverMoviesSheet extends StatelessWidget {
  final DiscoverMovies discoverMovies;

  const DiscoverMoviesSheet({
    required this.discoverMovies,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final movies = discoverMovies.movies;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: movies.length + 1,
      padding: EdgeInsets.only(bottom: t.spacing.x4),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Text(
            discoverMovies.genre,
            style: t.textTheme.title1Regular.copyWith(
              color: t.colors.neutralHighContent,
              fontFamily: FontFamily.newYork,
            ),
          );
        }

        final movie = movies[index - 1];

        return Padding(
          padding:
              EdgeInsets.only(top: index == 1 ? t.spacing.x5 : t.spacing.x2),
          child: DiscoverMoviesItem(movie: movie, movieNumber: index),
        );
      },
    );
  }

  static Future<void> show(
    BuildContext context, {
    required DiscoverMovies discoverMovies,
  }) async {
    final t = context.mdsTheme;

    return MDSBottomSheet.show(
      context: context,
      expand: true,
      useSafeArea: true,
      isDismissible: false,
      bodyPadding: EdgeInsets.symmetric(
        horizontal: t.spacing.x5,
      ).copyWith(top: t.spacing.x4),
      header: MDSBottomSheetHeader(
        title: MDSTextButton(
          colorMode: ColorMode.neutral,
          leftIcon: const PhosphorIcon(
            PhosphorIconsRegular.x,
          ),
          buttonSize: MDSTextButtonSize.L,
          onPressed: () {
            context.router.maybePop();
          },
        ),
        centerTitle: false,
      ),
      body: DiscoverMoviesSheet(
        discoverMovies: discoverMovies,
      ),
    );
  }
}
