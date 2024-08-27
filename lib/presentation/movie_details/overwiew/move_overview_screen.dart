import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/core/extensions/movie/movie_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/presentation/core/scafold.dart';
import 'package:movie_tracker/presentation/movie_details/overwiew/widgets/move_overview_right_button.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_overview.dart';
import 'package:movie_tracker/presentation/movie_details/widgets/movie_status_chooser.dart';

import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

@RoutePage()
class MovieOverviewScreen extends StatefulWidget {
  final Movie movie;
  final bool isFromAI;

  const MovieOverviewScreen({
    required this.movie,
    required this.isFromAI,
    super.key,
  });

  @override
  State<MovieOverviewScreen> createState() => _MovieOverviewScreenState();
}

class _MovieOverviewScreenState extends State<MovieOverviewScreen> {
  WatchStatus watchStatus = WatchStatus.toWatch;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return MTScafold(
      appBar: MDSAppBar(
        leading: GestureDetector(
          child: PhosphorIcon(
            PhosphorIconsRegular.caretLeft,
            color: t.colors.neutralHighContent,
          ),
          onTap: () => context.router.maybePop(),
        ),
        forceMaterialTransparency: true,
        trailing: MoveOverviewRightButton(
          movie: widget.movie.copyWith(
            status: watchStatus,
            editedAt: DateTime.now(),
          ),
          isFromAI: widget.isFromAI,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: t.spacing.x5,
          right: t.spacing.x5,
          top: t.spacing.x8,
          bottom: t.spacing.x4,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MovieOverview(movie: widget.movie),
              SizedBox(height: t.spacing.x4),
              MovieStatusChooser(
                onChanged: (status) {
                  setState(() {
                    watchStatus = status;
                  });
                },
                status: watchStatus,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
