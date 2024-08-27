import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/domain/review/review_from.dart';

class MovieSaverBlocListener
    extends BlocListener<MovieSaverBloc, MovieSaverState> {
  MovieSaverBlocListener({
    super.key,
  }) : super(
          listener: (context, state) {
            state.mapOrNull(
              saved: (savedState) {
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
