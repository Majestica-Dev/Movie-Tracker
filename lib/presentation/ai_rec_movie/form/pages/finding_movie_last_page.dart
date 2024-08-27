import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/bloc/movie_ai_rec_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/extensions/movie/movie_watcher_state_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/form/loading/movie_ai_rec_loading.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/widgets/majic_ball.dart';
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

    final movies = context.read<MovieWatcherBloc>().state.allMovies;

    final movieAiRecFormState = context.read<MovieAiRecFormCubit>().state;

    return BlocProvider<MovieAiRecBloc>(
      lazy: false,
      create: (context) => Locator.movieAiRecBloc
        ..add(MovieAiRecEvent.getRecomended(
          mood: movieAiRecFormState.mood ?? WatchMood.relaxed,
          genres: movieAiRecFormState.genres,
          streamingServices: movieAiRecFormState.streamingServices,
          movies: movies,
        )),
      child: BlocListener<MovieAiRecBloc, MovieAiRecState>(
        listener: (context, state) {
          state.mapOrNull(
            failed: (value) {
              const MDSToast(
                message: 'Somthing Went Wrong',
                type: ToastType.erorr,
              ).show();

              context.router.maybePop();
            },
            succeeded: (value) {
              if (animationEnded) {
                context.router.popAndPush(
                  MovieOverviewRoute(
                    movie: value.movie,
                    isFromAI: true,
                  ),
                );
              }
            },
          );
        },
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const MajicBall(isBig: true),
              SizedBox(height: t.spacing.x9),
              Expanded(
                child: MovieAiRecLoading(
                  onAnimationEnd: () {
                    final Movie? movie =
                        context.read<MovieAiRecBloc>().state.mapOrNull(
                              succeeded: (value) => value.movie,
                            );

                    if (movie != null) {
                      context.router.popAndPush(
                        MovieOverviewRoute(
                          movie: movie,
                          isFromAI: true,
                        ),
                      );

                      return;
                    }

                    setState(() {
                      animationEnded = true;
                    });
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
