import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: PrimaryButton(
              onPressed: () async {
                Locator.gptMovieRecImpl.getRecomendedMovieTitle(
                  mood: WatchMood.excited,
                  genres: [MovieGenre.documentary, MovieGenre.drama],
                  streamingServices: [StreamingService.amazonPrime],
                  movies: [],
                );
              },
              text: 'Test',
            ),
          )
        ],
      ),
    );
  }
}
