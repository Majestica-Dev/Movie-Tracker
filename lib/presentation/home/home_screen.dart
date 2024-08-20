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









// final request = ChatCompleteText(
//                   messages: [
//                     Messages(
//                       role: Role.user,
//                       content: '''
// Task: Recommend a movie title based on the user’s  current mood,  preferred genres and favorite movies,.
// Parameters:
// 	•	Current Mood: ""
// 	•	Preferred Genres: []
//   •	Favorite Movies: []
// Instructions: Return a single movie title that aligns with the user’s favorite movies, current mood, and preferred genres. Provide only the movie title. and it should not be on the list anymore''',
//                     ).toJson(),
//                   ],
//                   maxToken: 200,
//                   model: ChatModelFromValue(model: 'gpt-4o-mini'),
//                 );

//                 final response =
//                     await openAI.onChatCompletion(request: request);

//                 print(response!.choices.first.message!.content);

//                 MovieService()
//                     .fetchMovie(response!.choices.first.message!.content);