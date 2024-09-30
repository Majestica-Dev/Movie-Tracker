import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/scaffold.dart';
import 'package:movie_tracker/presentation/onboarding/favorite_movies/widgets/favorite_movie_chooser_grid_view.dart';
import 'package:movie_tracker/presentation/onboarding/favorite_movies/widgets/favorite_movies_chooser_screen_count_tile.dart';
import 'package:movie_tracker/presentation/onboarding/favorite_movies/widgets/search_feild_fake.dart';

@RoutePage()
class FavoriteMoviesChooserScreen extends StatefulWidget {
  const FavoriteMoviesChooserScreen({super.key});

  @override
  State<FavoriteMoviesChooserScreen> createState() =>
      _FavoriteMoviesChooserScreenState();
}

class _FavoriteMoviesChooserScreenState
    extends State<FavoriteMoviesChooserScreen> {
  List<Movie> chosenMovieFromOurRec = [];

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return MTScaffold(
      backgroundColor: t.colors.surface,
      body: Padding(
        padding: EdgeInsets.only(
          left: t.spacing.x4,
          right: t.spacing.x4,
          top: 64,
          bottom: 48,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FavoriteMoviesChooserScreenCountTile(
              chosenMovieFromOurRecLenght: chosenMovieFromOurRec.length,
            ),
            SizedBox(height: t.spacing.x2),
            Text(
              'Choose 5 favorite movies',
              style: t.textTheme.title1Regular
                  .copyWith(color: t.colors.neutralHighContent),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: t.spacing.x2),
            Text(
              'For personalized recommendation',
              style: t.textTheme.bodyMRegular.copyWith(
                color: t.colors.neutralHighContent,
              ),
            ),
            const Spacer(),
            const SearchFeildFake(),
            SizedBox(height: t.spacing.x5),
            FavoriteMovieChooserGridView(
              onChoose: (movie) {
                setState(() {
                  MDSHapticFeedback.selectionClick();

                  chosenMovieFromOurRec.add(movie);
                });
              },
              onRemove: (movie) {
                setState(() {
                  chosenMovieFromOurRec.remove(movie);
                });
              },
              chosedMovies: chosenMovieFromOurRec,
            ),
            const Spacer(),
            PrimaryButton(
              expand: true,
              buttonSize: MDSButtonSize.L,
              onPressed: () {
                context.read<MovieSaverBloc>().add(
                    MovieSaverEvent.saveAll(movies: chosenMovieFromOurRec));

                context.router.pushAndPopUntil(
                  const HomeRoute(),
                  predicate: (_) => false,
                );
              },
              text: 'Continue',
            )
          ],
        ),
      ),
    );
  }
}
