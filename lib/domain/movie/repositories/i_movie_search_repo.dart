import 'package:movie_tracker/core/typdefs/typdef.dart';

abstract interface class IMovieSearchRepo {
  // TODO : error handling
  Future<Movies> searchByTitle(String title);
}
