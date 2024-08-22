import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/ai_rec_movie/form/pages/finding_movie_last_page.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/pages/movie_genre_chooser_page.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/pages/streaming_services_chooser_page.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/pages/watch_mood_chooser_page.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/providers/movie_ai_rec_form_sheet_providers.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/widgets/movie_ai_rec_form_header.dart';

abstract final class MovieAiRecFormSheet {
  static Future<T?> show<T>(
    BuildContext context,
  ) {
    final PageController controller = PageController();

    return DotsBottomSheet.show<T>(
      isDismissible: false,
      enableDrag: false,
      items: [
        const WatchMoodChooserPage(),
        const MovieGenreChooserPage(),
        const StreamingServicesChooserPage(),
        const FindingMovieLastPage(),
      ],
      context: context,
      wrapper: (child) => MovieAiRecFormSheetProviders(child: child),
      header: MovieAiRecFormHeader(controller: controller),
      controller: controller,
    ).then((value) {
      controller.dispose();

      return value;
    });
  }
}
