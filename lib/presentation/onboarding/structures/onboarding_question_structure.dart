import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:majestica_ds/majestica_ds.dart';

import 'package:movie_tracker/presentation/onboarding/models/onboarding_question_item.dart';
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 64),
        GestureDetector(
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
        SizedBox(height: t.spacing.x10),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: t.colors.surface,
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: t.colors.neutralLowContent,
                ),
              ),
            ),
            padding: EdgeInsets.only(
              left: t.spacing.x4,
              right: t.spacing.x4,
              bottom: 48,
              top: t.spacing.x9,
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: t.colors.primaryLowContainer,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 115,
                      height: 115,
                      decoration: BoxDecoration(
                        color: t.colors.primaryLowContainer,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SvgPicture.asset(
                      iconPath,
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
