import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';

class MovieAiRecFormHeader extends StatelessWidget {
  final PageController controller;

  const MovieAiRecFormHeader({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return BlocBuilder<MovieAiRecFormCubit, MovieAiRecFormState>(
      builder: (context, state) {
        return MDSBottomSheetHeader(
          showBorderLine: false,
          title: const Text('Finding your movie...'),
          trailing: state.isLastPage
              ? null
              : MDSTextButton(
                  disabled: state.mood == null || !state.moveEnabled,
                  onPressed: () {
                    context.read<MovieAiRecFormCubit>().setMoveEnabled(false);

                    controller
                        .nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        )
                        .then(
                          // ignore: use_build_context_synchronously
                          (value) => context
                              .read<MovieAiRecFormCubit>()
                              .setMoveEnabled(true),
                        );

                    context
                        .read<MovieAiRecFormCubit>()
                        .setPageIndex(state.pageIndex + 1);
                  },
                  text: 'Next',
                ),
          leading: state.isLastPage
              ? null
              : GestureDetector(
                  onTap: () {
                    if (state.isFirstPage) {
                      context.router.maybePop();

                      return;
                    } else {
                      controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );

                      context
                          .read<MovieAiRecFormCubit>()
                          .setPageIndex(state.pageIndex - 1);
                    }
                  },
                  child: PhosphorIcon(
                    state.isFirstPage
                        ? PhosphorIconsRegular.x
                        : PhosphorIconsRegular.caretLeft,
                    size: 24,
                    color: t.colors.neutralHighContent,
                  ),
                ),
        );
      },
    );
  }
}
