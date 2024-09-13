import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/extensions/movie/watch_status_x.dart';
import 'package:movie_tracker/domain/review/review_from.dart';
import 'package:movie_tracker/presentation/core/toasts/succeeded_toast.dart';

class MovieSaverBlocListener
    extends BlocListener<MovieSaverBloc, MovieSaverState> {
  MovieSaverBlocListener({
    super.key,
  }) : super(
          listener: (context, state) {
            state.mapOrNull(
              saved: (savedState) {
                final savedMovie = savedState.movie;

                if (savedMovie != null) {
                  final addedTFavoriteText =
                      savedMovie.isFavorite ? 'Favorite and' : '';

                  SucceededToast.show(
                    message:
                        'Movie added to $addedTFavoriteText ${savedMovie.status.listName}',
                  );
                }

                final addedMoviesCount = savedState.addedMoviesCount;

                if (addedMoviesCount >= 10) {
                  Timer(
                    const Duration(seconds: 1),
                    () {
                      Locator.reviewService.checkAndRequestReviw(
                        reviewFrom: ReviewFrom.added10movies,
                      );
                    },
                  );
                }
              },
            );
          },
        );
}
