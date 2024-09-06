import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';

class FavoriteMoviesChooserScreenCountTile extends StatelessWidget {
  final int chosenMovieFromOurRecLenght;
  const FavoriteMoviesChooserScreenCountTile({
    super.key,
    required this.chosenMovieFromOurRecLenght,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: t.spacing.x3),
        BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
          builder: (context, state) {
            return Text(
              (state.allMovies.length + chosenMovieFromOurRecLenght).toString(),
              style: t.textTheme.titleLargeBold.copyWith(
                color: t.colors.primaryHighContent,
              ),
            );
          },
        ),
        SizedBox(width: t.spacing.x3),
        Text(
          'of',
          style: t.textTheme.titleLargeRegular
              .copyWith(color: t.colors.neutralHighContent),
        ),
        SizedBox(width: t.spacing.x3),
        Text(
          '5',
          style: t.textTheme.titleLargeBold
              .copyWith(color: t.colors.neutralHighContent),
        ),
      ],
    );
  }
}
