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
import 'package:sentry_flutter/sentry_flutter.dart';

@singleton
class GptMovieRecImpl {
  final OpenAI openAI;

  GptMovieRecImpl({required this.openAI});

  Future<Either<AiMovieRecFailure, String>> getRecomendedMovieTitle({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required Movies favoriteMovies,
    required List<String> alreadyRecMoviesTitle,
  }) async {
    final List<String> moviesTitles = favoriteMovies.map((e) => e.title).toList();

    try {
      final prompt = _generetePromptForGptRecomend(
        mood: mood,
        genres: genres,
        streamingServices: streamingServices,
        moviesTitles: moviesTitles,
        alreadyRecMoviesTitle: alreadyRecMoviesTitle,
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

      final title = response!.choices.first.message!.content;

      return Right(title);
    } catch (e) {
      Sentry.captureException(e);

      return Left(AiMovieRecUnknowError());
    }
  }

  String _generetePromptForGptRecomend({
    required WatchMood mood,
    required List<MovieGenre> genres,
    required List<StreamingService> streamingServices,
    required List<String> moviesTitles,
    required List<String> alreadyRecMoviesTitle,
  }) {
    final currentMood = mood.title;
    final preferredGenres = genres.map((e) => e.title).toString();
    final favoriteMovies = moviesTitles.toString();
    final services = streamingServices.toString();
    final alreadyRecMovies = alreadyRecMoviesTitle.toString();

    return '''Task:
Act like a professional movie recommendation expert with extensive knowledge of films across all genres, moods, and streaming platforms. Recommend a movie that fits the user’s preferences and is likely to be enjoyed based on their favorite movies, current mood, preferred genres, and streaming platforms. The movie must not be on the user’s list of favorite or already recommended movies and should be available on the user’s specified streaming platforms.

Parameters:

  • Favorite Movies: $favoriteMovies
  • Current Mood: $currentMood
  • Preferred Genres: $preferredGenres
  • Streaming Platforms: $services (optional)
  • Already Recommended Movies: $alreadyRecMovies

Instructions:

  1.  Suggest a movie that hasn’t been included in the user’s Favorite Movies list or Already Recommended Movies list.
  2.  The recommendation should align with the user’s mood, preferred genres, and favorite movies, focusing on finding a match that feels fresh yet enjoyable.
  3.  If streaming platforms are provided, ensure the movie is available on at least one of the specified services.
  4.  Aim for the best possible fit to the user’s preferences and mood.
  5.  Return only the movie title without an other text in any case.


Take a deep breath and work on this problem step-by-step and return only movie title.''';
  }
}
