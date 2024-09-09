import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';

import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:movie_tracker/presentation/core/scafold.dart';
import 'package:movie_tracker/presentation/movie_details/overwiew/widgets/movie_ai_rec_regenerate_button.dart';

import 'package:movie_tracker/presentation/movie_details/overwiew/widgets/movie_save_button.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_details_card.dart';

import 'package:movie_tracker/presentation/movie_details/widgets/movie_overview.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_trailer_launch_button.dart';

@RoutePage()
class MovieOverviewScreen extends StatelessWidget {
  final Movie movie;
  final bool isFromAi;
  final WatchStatus? watchStatus;
  final MovieAiRecFormState? movieAiRecFormState;

  const MovieOverviewScreen({
    required this.movie,
    required this.isFromAi,
    required this.watchStatus,
    required this.movieAiRecFormState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;
    final trailerLink = movie.trailerLink;

    return MTScafold(
      appBar: MDSAppBar(
        leading: GestureDetector(
          child: PhosphorIcon(
            PhosphorIconsRegular.caretLeft,
            color: t.colors.neutralHighContent,
          ),
          onTap: () => context.router.maybePop(),
        ),
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: t.spacing.x5,
          right: t.spacing.x5,
          bottom: t.spacing.x4,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MovieOverview(movie: movie),
              SizedBox(height: t.spacing.x6),
              MovieTrailerLaunchButton(
                trailerLink: trailerLink,
                movieTitle: movie.title,
              ),
              SizedBox(height: t.spacing.x3),
              MovieSaveButton(movie: movie, isFromAi: isFromAi),
              if (isFromAi) ...[
                SizedBox(height: t.spacing.x3),
                MovieAiRecRegenerateButton(
                  movieAiRecFormState: movieAiRecFormState,
                ),
              ],
              SizedBox(height: t.spacing.x6),
              MovieDetailsCard(movie: movie),
              SizedBox(height: t.spacing.x6),
            ],
          ),
        ),
      ),
    );
  }
}
