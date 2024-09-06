import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/presentation/ai_rec_movie/form/movie_ai_rec_form_sheet.dart';
import 'package:movie_tracker/presentation/core/extensions/context/build_context_x.dart';

import 'package:movie_tracker/presentation/paywall/sheet/paywall_sheet.dart';

class MovieAiRecRegenerateButton extends StatelessWidget {
  final MovieAiRecFormState? movieAiRecFormState;

  const MovieAiRecRegenerateButton({
    super.key,
    required this.movieAiRecFormState,
  });

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      expand: true,
      buttonSize: MDSButtonSize.L,
      leftIcon: const PhosphorIcon(PhosphorIconsRegular.repeat),
      text: 'Regenerate',
      onPressed: () {
        if (context.generateAiEnabled) {
          context.router.maybePop().then(
            (value) {
              MovieAiRecFormSheet.show(
                Locator.appRouter.navigatorKey.currentContext!,
                movieAiRecFormState,
              );
            },
          );
        } else {
          PaywallSheet.show(context);
        }
      },
    );
  }
}
