import 'package:movie_tracker/core/typdefs/typdef.dart';

abstract interface class IBookSearchRepo {
  // TODO : error handling
  Future<Movies> search(String query);
}
