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
    final List<String> moviesTitles = movies.map((e) => e.title).toList();

    try {
      final prompt = _generetePromptForGptRecomend(
        mood: mood,
        genres: genres,
        streamingServices: streamingServices,
        moviesTitles: moviesTitles,
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
      // TODO : Sentry
      return Left(AiMovieRecUnknowError());
    }
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
    final services = streamingServices.toString();

    return '''Task:
Recommend a movie title based on the user’s current mood, preferred genres, favorite movies, and available streaming platforms (if specified). The movie must not be on the user’s list of favorite movies and should be available on one of the user’s streaming platforms (if provided).

Parameters:

	•	Current Mood: $currentMood
	•	Preferred Genres: $preferredGenres
	•	Favorite Movies: $favoriteMovies
	•	Streaming Platforms: $services (optional)

Instructions:


  1.	Ensure the movie is not already in this list $favoriteMovies
	2.	Select a movie that fits the user’s current mood and preferred genres.
	3.	If streaming platforms are provided, ensure the movie is available on one of those platforms.
	4.	Return only the movie title.''';
  }
}
