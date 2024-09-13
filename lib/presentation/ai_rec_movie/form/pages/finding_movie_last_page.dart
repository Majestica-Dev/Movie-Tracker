import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/bloc/movie_ai_rec_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/application/movie/ai_rec/use_count/movie_ai_rec_use_count_cubit.dart';
import 'package:movie_tracker/core/di/locator.dart';

import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/review/review_from.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/form/loading/movie_ai_rec_loading.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/widgets/majic_ball.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';
import 'package:movie_tracker/presentation/core/managers/animations/cnafeti_animation.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

class FindingMovieLastPage extends StatefulWidget {
  const FindingMovieLastPage({super.key});

  @override
  State<FindingMovieLastPage> createState() => _FindingMovieLastPageState();
}

class _FindingMovieLastPageState extends State<FindingMovieLastPage> {
  bool animationEnded = false;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final movieAiRecFormState = context.read<MovieAiRecFormCubit>().state;

    return BlocProvider<MovieAiRecBloc>(
      lazy: false,
      create: (context) => Locator.movieAiRecBloc
        ..add(
          MovieAiRecEvent.getRecomended(
            mood: movieAiRecFormState.mood ?? WatchMood.relaxed,
            genres: movieAiRecFormState.genres,
            streamingServices: movieAiRecFormState.streamingServices,
            movies: context.allMovies,
          ),
        ),
      child: BlocListener<MovieAiRecBloc, MovieAiRecState>(
        listener: (context, state) {
          state.mapOrNull(
            succeeded: (value) =>
                context.read<MovieAiRecUseCountCubit>().checkCount(),
          );
        },
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                const SizedBox(height: 67),
                const MajicBall(isBig: true),
                SizedBox(height: t.spacing.x9),
                Expanded(
                  child: Column(
                    children: [
                      MovieAiRecLoading(
                        onAnimationEnd: () {
                          setState(() {
                            animationEnded = true;
                          });
                        },
                      ),
                      SizedBox(height: t.spacing.x7),
                      BlocBuilder<MovieAiRecBloc, MovieAiRecState>(
                        builder: (context, state) {
                          final Movie? movie = state.mapOrNull(
                            succeeded: (value) => value.movie,
                          );

                          return AnimatedOpacity(
                            opacity: animationEnded && movie != null ? 1 : 0,
                            duration: const Duration(milliseconds: 300),
                            child: PrimaryButton(
                              buttonSize: MDSButtonSize.L,
                              expand: true,
                              text: 'See result',
                              disabled: movie == null || !animationEnded,
                              onPressed: () {
                                Locator.reviewService.checkAndRequestReviw(
                                  reviewFrom: ReviewFrom.aiMovieResult,
                                );

                                context.router.popAndPush(
                                  MovieOverviewRoute(
                                    movieAiRecFormState: movieAiRecFormState,
                                    movie: movie!,
                                    isFromAi: true,
                                    watchStatus: WatchStatus.toWatch,
                                  ),
                                );

                                CanfetiAnimation.show(
                                  waitingDuration:
                                      const Duration(milliseconds: 500),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
