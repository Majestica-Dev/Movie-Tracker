import 'package:movie_tracker/core/typdefs/typdef.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/home/search/widgets/movie_tile.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MovieListView extends StatelessWidget {
  final Movies movies;
  final WatchStatus? watchStatus;
  final bool isFavorite;

  const MovieListView({
    required this.movies,
    required this.watchStatus,
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: context.mdsTheme.spacing.x3),
            child: MovieTile(
              isFavorite: isFavorite,
              watchStatus: watchStatus,
              movie: movies[index],
            ),
          );
        },
      ),
    );
  }
}
