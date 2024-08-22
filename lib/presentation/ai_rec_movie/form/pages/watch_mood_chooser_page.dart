import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/watch_mood_x.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_mood.dart';

class WatchMoodChooserPage extends StatelessWidget {
  const WatchMoodChooserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: t.spacing.x4,
            vertical: t.spacing.x3,
          ),
          decoration: BoxDecoration(
            color: t.colors.neutralLowContainer,
            borderRadius: BorderRadius.circular(t.spacing.x3),
          ),
          child: Text(
            'What’s your current mood for watching?',
            style: t.textTheme.title3Bold.copyWith(
              color: t.colors.neutralHighContent,
            ),
          ),
        ),
        SizedBox(height: t.spacing.x4),
        const Spacer(),
        BlocBuilder<MovieAiRecFormCubit, MovieAiRecFormState>(
          builder: (context, state) {
            return Column(
              children: List.generate(
                WatchMood.values.length,
                (index) {
                  final mood = WatchMood.values[index];

                  return Selector(
                    margin: index + 1 == WatchMood.values.length
                        ? null
                        : EdgeInsets.only(bottom: t.spacing.x2),
                    showRadio: false,
                    value: mood == state.mood,
                    onChanged: (value) {
                      context.read<MovieAiRecFormCubit>().setMood(mood);
                    },
                    body: Row(
                      children: [
                        Text(
                          mood.emoji,
                          style: t.textTheme.title1Bold,
                        ),
                        SizedBox(width: t.spacing.x3),
                        Text(mood.title)
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
