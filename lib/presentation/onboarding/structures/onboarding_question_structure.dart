import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/onboarding/models/onboarding_question_item.dart';
import 'package:movie_tracker/presentation/onboarding/widgets/onboarding_header_icon.dart';
import 'package:movie_tracker/presentation/onboarding/widgets/onboarding_question_view.dart';

class OnboardingQuestionStructure extends StatelessWidget {
  final VoidCallback changePage;
  final String title;
  final String iconPath;
  final List<OnboardingQuestionItem> questions;
  final bool isMultiSelect;

  const OnboardingQuestionStructure({
    required this.changePage,
    required this.title,
    required this.iconPath,
    required this.questions,
    this.isMultiSelect = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final double screenHeight = MediaQuery.of(context).size.height;

    final bool isSmallScreen = screenHeight < 700;

    return Padding(
      padding: EdgeInsets.only(
        top: isSmallScreen ? 30 : 64,
        left: t.spacing.x5,
        right: t.spacing.x5,
        bottom: 44,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: changePage,
              child: Padding(
                padding: EdgeInsets.only(right: t.spacing.x4),
                child: Text(
                  'Skip',
                  style: t.textTheme.bodyMRegular.copyWith(
                    color: t.colors.neutralHighContent,
                  ),
                ),
              ),
            ),
          ),
          OnboardingHeaderIcon(iconPath: iconPath),
          SizedBox(height: t.spacing.x3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: t.spacing.x2),
            child: Text(
              title,
              style: t.textTheme.title1Regular.copyWith(
                color: t.colors.neutralHighContent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          OnboardingQuestionView(
            items: questions,
            changePage: changePage,
            isMultiSelect: isMultiSelect,
          ),
          const Spacer(),
          PrimaryButton(
            onPressed: changePage,
            text: 'Continue',
            buttonSize: MDSButtonSize.L,
            expand: true,
          ),
        ],
      ),
    );
  }
}
