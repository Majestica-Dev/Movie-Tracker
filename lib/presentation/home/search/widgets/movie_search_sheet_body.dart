import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/search/movie_search_bloc.dart';
import 'package:movie_tracker/core/utils/debouncer.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/core/widgets/message_banner.dart';

import 'package:movie_tracker/presentation/home/search/widgets/movie_list_view.dart';

class MovieSearchSheetBody extends StatefulWidget {
  final WatchStatus? watchStatus;
  final bool isFavorite;

  const MovieSearchSheetBody({
    required this.watchStatus,
    required this.isFavorite,
    super.key,
  });

  @override
  State<MovieSearchSheetBody> createState() => _MovieSearchSheetBodyState();
}

class _MovieSearchSheetBodyState extends State<MovieSearchSheetBody> {
  final debouncer = Debouncer(milliseconds: 800);

  final searchFocusNode = FocusNode()..requestFocus();

  @override
  Widget build(BuildContext ctx) {
    final t = context.mdsTheme;

    String previousSearchText = ''.trim();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: t.spacing.x5,
        vertical: t.spacing.x4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MDSSearchField(
            focusNode: searchFocusNode,
            hintText: 'Movie title',
            onChanged: (value) {
              if (value.trim() == previousSearchText) return;
              previousSearchText = value;

              if (value.trim().isNotEmpty) {
                debouncer.run(
                  () {
                    context
                        .read<MovieSearchBloc>()
                        .add(MovieSearchEvent.search(value));
                  },
                );
              } else {
                debouncer.cancel();
              }
            },
          ),
          SizedBox(height: t.spacing.x5),
          BlocBuilder<MovieSearchBloc, MovieSearchState>(
            builder: (context, bookSearchState) {
              return bookSearchState.map(
                init: (_) {
                  return const SizedBox();
                },
                inProcess: (_) {
                  return Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: t.colors.primaryHighContent,
                        strokeWidth: 4,
                      ),
                    ),
                  );
                },
                failed: (_) {
                  return MessageBanner(
                    title: "Search failed",
                    icon: PhosphorIcon(
                      PhosphorIconsRegular.warning,
                      color: t.colors.primaryHighContent,
                    ),
                  );
                },
                done: (result) {
                  final movies = result.movies;

                  if (movies.isEmpty) {
                    return const MessageBanner(
                      title: 'Nothing found',
                    );
                  }

                  return MovieListView(
                    isFavorite: widget.isFavorite,
                    movies: movies,
                    watchStatus: widget.watchStatus,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    debouncer.cancel();

    super.dispose();
  }
}
