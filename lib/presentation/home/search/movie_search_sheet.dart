import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/search/movie_search_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/presentation/home/search/widgets/movie_search_sheet_body.dart';
import 'package:movie_tracker/presentation/home/search/widgets/movie_search_sheet_header.dart';

abstract final class MovieSearchSheet {
  static Future<void> show(
    BuildContext context, {
    required WatchStatus? watchStatus,
  }) async {
    MDSBottomSheet.show(
      bodyPadding: EdgeInsets.zero,
      context: context,
      useSafeArea: true,
      expand: true,
      isDismissible: false,
      wrapper: (child) => BlocProvider<MovieSearchBloc>(
        create: (context) => Locator.movieSearchBloc,
        child: child,
      ),
      header: const MovieSearchSheetHeader(),
      body: MovieSearchSheetBody(
        watchStatus: watchStatus,
      ),
    );
  }
}
