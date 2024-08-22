import 'widgets/movie_ai_rec_progress_bar.dart';

import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';

class MovieAiRecLoading extends StatefulWidget {
  final VoidCallback onAnimationEnd;

  const MovieAiRecLoading({
    required this.onAnimationEnd,
    super.key,
  });

  @override
  State<MovieAiRecLoading> createState() => _MovieAiRecLoadingState();
}

class _MovieAiRecLoadingState extends State<MovieAiRecLoading> {
  bool loaded2 = false;

  bool loaded3 = false;

  bool loaded4 = false;

  bool loaded5 = false;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: [
        MovieAiRecProgressBar(
          show: true,
          title: 'Analyzing your current mood…',
          onAnimationEnd: () {
            setState(() {
              loaded2 = true;
            });
          },
        ),
        SizedBox(height: t.spacing.x7),
        MovieAiRecProgressBar(
          show: loaded2,
          title: 'Checking your streaming services…',
          onAnimationEnd: () {
            setState(() {
              loaded3 = true;
            });
          },
        ),
        SizedBox(height: t.spacing.x7),
        MovieAiRecProgressBar(
          show: loaded3,
          title: 'Matching you with the perfect movie…',
          onAnimationEnd: () {
            setState(() {
              loaded4 = true;
            });
          },
        ),
        SizedBox(height: t.spacing.x7),
        MovieAiRecProgressBar(
          show: loaded4,
          title: 'Finalizing your movie recommendation…',
          onAnimationEnd: () {
            setState(() {
              loaded5 = true;
            });
          },
        ),
        SizedBox(height: t.spacing.x7),
        MovieAiRecProgressBar(
          show: loaded5,
          title: '''We've found the perfect movie for you!''',
          onAnimationEnd: widget.onAnimationEnd,
        ),
      ],
    );
  }
}
