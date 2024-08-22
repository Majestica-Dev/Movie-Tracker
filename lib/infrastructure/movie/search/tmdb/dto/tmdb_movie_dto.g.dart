// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TmdbMovieDto _$TmdbMovieDtoFromJson(Map<String, dynamic> json) => TmdbMovieDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );
