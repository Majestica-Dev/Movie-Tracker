import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/core/extensions/movie/ai_rec/movie_genre_x.dart';

import 'package:movie_tracker/domain/movie/entities/ai_rec/movie_genre.dart';

class MovieGenreChooserPage extends StatelessWidget {
  const MovieGenreChooserPage({super.key});

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
            'What genres are you in the genre for?',
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
              children: [
                Selector(
                  margin: EdgeInsets.only(bottom: t.spacing.x2),
                  showRadio: false,
                  value: state.genres.contains(MovieGenre.any),
                  onChanged: (value) {
                    context
                        .read<MovieAiRecFormCubit>()
                        .setOrRemoveGenre(MovieGenre.any);
                  },
                  body: Row(
                    children: [
                      Text(
                        MovieGenre.any.emoji,
                        style: t.textTheme.title1Bold,
                      ),
                      SizedBox(width: t.spacing.x3),
                      Text(MovieGenre.any.title)
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 175 / 80,
                  ),
                  itemCount: MovieGenreX.withoutAny.length,
                  itemBuilder: (context, index) {
                    final genre = MovieGenreX.withoutAny[index];

                    return Selector(
                      margin: index + 1 == MovieGenre.values.length
                          ? null
                          : EdgeInsets.only(bottom: t.spacing.x2),
                      showRadio: false,
                      value: state.genres.contains(genre),
                      onChanged: (value) {
                        context
                            .read<MovieAiRecFormCubit>()
                            .setOrRemoveGenre(genre);
                      },
                      body: Expanded(
                        child: Row(
                          children: [
                            Text(
                              genre.emoji,
                              style: t.textTheme.title1Bold,
                            ),
                            SizedBox(width: t.spacing.x3),
                            Expanded(child: Text(genre.title))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
