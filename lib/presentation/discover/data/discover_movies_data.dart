import 'package:movie_tracker/presentation/discover/data/action_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/best_2024_movies.dart';
import 'package:movie_tracker/presentation/discover/data/comedy_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/scifi_movies_data.dart';
import 'package:movie_tracker/presentation/discover/data/thriller_movies_data.dart';
import 'package:movie_tracker/presentation/discover/models/discover_movie.dart';

final List<DiscoverMovies> discoverMoviesData = [
  best2024Movies,
  actionMovies,
  thrillerMovies,
  sciFiMovies,
  comedyMovies,
];
