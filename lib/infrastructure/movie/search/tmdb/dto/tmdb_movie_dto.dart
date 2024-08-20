import 'package:json_annotation/json_annotation.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';

part 'tmdb_movie_dto.g.dart';

@JsonSerializable(createToJson: false)
class TmdbMovieDto {
  final int id;
  final String title;

  final String? overview;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  TmdbMovieDto({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
  });

  factory TmdbMovieDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbMovieDtoFromJson(json);

  Movie get toEntity {
    return Movie(
      id: id.toString(),
      title: title,
      description: overview,
      posterImageUrl: posterPath == null
          ? null
          : 'https://image.tmdb.org/t/p/w500$posterPath',
      status: WatchStatus.toWatch,
    );
  }
}
