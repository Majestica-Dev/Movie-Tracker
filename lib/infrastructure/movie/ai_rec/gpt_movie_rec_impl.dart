import 'dart:math';

import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/movie_genre_x.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/watch_mood_x.dart';
import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/streaming_service.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';
import 'package:movie_tracker/domain/movie/entities/failures/ai_movie_rec_failure.dart';

@Singleton()
class GptMovieRecImpl {
  final OpenAI openAI;

  GptMovieRecImpl({required this.openAI});

  Future<Either<AiMovieRecFailure, String>> getRecomendedMovieTitle({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies movies,
  }) async {
    try {
      final randomMoviesTitles = _get5RandomMoviesTitles(movies: movies);

      final prompt = _generetePromptForGptRecomend(
        mood: mood,
        genres: genres,
        streamingServices: streamingServices,
        moviesTitles: randomMoviesTitles,
      );

      final request = ChatCompleteText(
        messages: [
          Messages(
            role: Role.user,
            content: prompt,
          ).toJson(),
        ],
        maxToken: 200,
        model: ChatModelFromValue(model: 'gpt-4o-mini'),
      );

      final response = await openAI.onChatCompletion(request: request);

      return Right(response!.choices.first.message!.content);
    } catch (e) {
      // TODO : Sentry
      return Left(AiMovieRecUnknowError());
    }
  }

  List<String> _get5RandomMoviesTitles({required Movies movies}) {
    if (movies.isEmpty) return [];

    final random = Random();
    final shuffled = Movies.from(movies)..shuffle(random);

    // If the list has fewer than 5 items, take all of them
    final randomMovies =
        shuffled.length <= 5 ? shuffled : shuffled.take(5).toList();

    return randomMovies.map((e) => e.title).toList();
  }

  String _generetePromptForGptRecomend({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required List<String> moviesTitles,
  }) {
    final currentMood = mood.title;
    final preferredGenres = genres.map((e) => e.title).toString();
    final favoriteMovies = moviesTitles.toString();

    return '''Task: Recommend a movie title based on the user’s  current mood,  preferred genres and favorite movies,.
  Parameters:
	•	Current Mood: $currentMood
	•	Preferred Genres: $preferredGenres  
  • Favorite Movies: $favoriteMovies
Instructions: Return a single movie title that aligns with the user’s favorite movies, current mood, and preferred genres. Provide only the movie title. and it should not be on the list anymore''';
  }
}
