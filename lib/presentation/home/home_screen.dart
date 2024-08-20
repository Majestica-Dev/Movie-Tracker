import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final openAI = OpenAI.instance.build(
      token: token,
      baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
      enableLog: true,
    );

    // TODO
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: PrimaryButton(
              onPressed: () async {
                TMDBMovieServies().fetchMovie('Harrry');
              },
              text: 'Test',
            ),
          )
        ],
      ),
    );
  }
}

final token =
    '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';

class MovieService {
  final String apiKey = '84d0e788'; // Replace with your API key

  void fetchMovie(query) async {
    final response = await Dio()
        .get('http://www.omdbapi.com/?t=$query&apikey=$apiKey&type=movie');

    print(response);
  }
}

class TMDBMovieServies {
  void fetchMovie(title) async {
    const String apiKey = '22a5a7ca47ed70dfcdbf1bd0a5a049e4';
    const String baseUrl = 'https://api.themoviedb.org/3';

    final response =
        await Dio().get('$baseUrl/search/movie?api_key=$apiKey&query=$title');

    print(response);
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