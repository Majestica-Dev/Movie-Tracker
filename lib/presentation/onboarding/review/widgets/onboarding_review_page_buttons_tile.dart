import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/core/loggers/amplitude_service.dart';
import 'package:movie_tracker/domain/review/review_from.dart';

class OnboardingReviewPageButtonsTile extends StatefulWidget {
  final VoidCallback changePage;

  const OnboardingReviewPageButtonsTile({
    required this.changePage,
    super.key,
  });

  @override
  State<OnboardingReviewPageButtonsTile> createState() =>
      _OnboardingReviewPageButtonsTileState();
}

class _OnboardingReviewPageButtonsTileState
    extends State<OnboardingReviewPageButtonsTile> {
  bool isLoading = false;
  bool hideSkip = false;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: [
        PrimaryButton(
          onPressed: on5Star,
          leftIcon: isLoading
              ? CupertinoActivityIndicator(
                  radius: 10,
                  color: context.mdsTheme.colors.highContainerContent,
                )
              : null,
          text: hideSkip ? 'Continue' : '5 star',
          disabled: isLoading,
          expand: true,
          buttonSize: MDSButtonSize.L,
        ),
        Visibility(
          visible: !hideSkip,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.only(top: t.spacing.x3),
            child: SecondaryButton(
              colorMode: ColorMode.neutral,
              onPressed: () {
                AmplitudeService.onboardingReviewPageSkipped();

                widget.changePage();
              },
              disabled: isLoading,
              text: 'Skip',
              expand: true,
              buttonSize: MDSButtonSize.L,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> on5Star() async {
    if (hideSkip) {
      widget.changePage();
    } else {
      await Locator.reviewService.checkAndRequestReview(
        reviewFrom: ReviewFrom.onboarding,
      );

      AmplitudeService.onboardingReviewPageStared();

      setState(
        () {
          isLoading = true;
          Timer(
            const Duration(seconds: 2),
            () {
              setState(() {
                isLoading = false;
                hideSkip = true;
              });
            },
          );
        },
      );
    }
  }
}
