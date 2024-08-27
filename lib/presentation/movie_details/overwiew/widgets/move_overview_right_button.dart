import 'dart:async';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/review/review_from.dart';

class MoveOverviewRightButton extends StatelessWidget {
  final Movie movie;
  final bool isFromAI;

  const MoveOverviewRightButton({
    required this.movie,
    required this.isFromAI,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MDSTextButton(
      text: "Add",
      rightIcon: const PhosphorIcon(
        PhosphorIconsRegular.plus,
      ),
      disabled:
          context.read<MovieWatcherBloc>().state.getMovieById(movie.id) != null,
      onPressed: () {
        context.read<MovieSaverBloc>().add(
              MovieSaverEvent.save(
                movie: movie,
              ),
            );

        context.router.maybePop();

        if (isFromAI) {
          Timer(
            const Duration(seconds: 1),
            () {
              Locator.reviewService.checkAndRequestReviw(
                reviewFrom: ReviewFrom.aiMovieResult,
              );
            },
          );
        }
      },
    );
  }
}
