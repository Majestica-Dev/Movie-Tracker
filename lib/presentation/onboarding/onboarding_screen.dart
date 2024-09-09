import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/gen/assets.gen.dart';
import 'package:movie_tracker/presentation/core/scafold.dart';

import 'package:movie_tracker/presentation/onboarding/models/onboarding_question_item.dart';
import 'package:movie_tracker/presentation/onboarding/extra/extra_page.dart';
import 'package:movie_tracker/presentation/onboarding/paywall/paywall_page.dart';
import 'package:movie_tracker/presentation/onboarding/social_trust/social_trust_page.dart';
import 'package:movie_tracker/presentation/onboarding/structures/onboarding_question_structure.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    final PageController pageController = PageController();

    void changePage() {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    final List<Widget> questionPages = [
      OnboardingQuestionStructure(
        changePage: changePage,
        title: 'How long do you typically spend searching for a movie?',
        iconPath: Assets.onboarding.icons.clock,
        questions: [
          OnboardingQuestionItem(emoji: '😇', title: 'Less than 15 minutes'),
          OnboardingQuestionItem(emoji: '🙂', title: '15 - 40 minutes'),
          OnboardingQuestionItem(emoji: '🙁', title: 'More than 40 minutes'),
        ],
      ),
      OnboardingQuestionStructure(
        changePage: changePage,
        title:
            'Do you ever start a movie and realize it’s not what you wanted?',
        iconPath: Assets.onboarding.icons.crying,
        questions: [
          OnboardingQuestionItem(emoji: '🤔', title: 'Often'),
          OnboardingQuestionItem(emoji: '😐', title: 'Sometimes'),
          OnboardingQuestionItem(emoji: '😊', title: 'Rarely'),
        ],
      ),
      OnboardingQuestionStructure(
        changePage: changePage,
        title:
            'How satisfied are you with the recommendations on streaming platforms?',
        iconPath: Assets.onboarding.icons.film,
        questions: [
          OnboardingQuestionItem(emoji: '😍', title: 'Very satisfied'),
          OnboardingQuestionItem(emoji: '🙂', title: 'Satisfied'),
          OnboardingQuestionItem(emoji: '😐', title: 'Neutral'),
          OnboardingQuestionItem(emoji: '😞', title: 'Dissatisfied'),
        ],
      ),
      OnboardingQuestionStructure(
        changePage: changePage,
        title: 'Do you feel that most movie suggestions don’t match your mood?',
        iconPath: Assets.onboarding.icons.film,
        questions: [
          OnboardingQuestionItem(emoji: '😕', title: 'Yes'),
          OnboardingQuestionItem(emoji: '😐', title: 'Sometimes'),
          OnboardingQuestionItem(emoji: '😊', title: 'No'),
        ],
      ),
      OnboardingQuestionStructure(
        changePage: changePage,
        title:
            'How often do you want to watch something but can’t decide what?',
        iconPath: Assets.onboarding.icons.film,
        questions: [
          OnboardingQuestionItem(emoji: '😞', title: 'Often'),
          OnboardingQuestionItem(emoji: '😕', title: 'Sometimes'),
          OnboardingQuestionItem(emoji: '😊', title: 'Rarely'),
        ],
      ),
      OnboardingQuestionStructure(
        changePage: changePage,
        title: 'Do you struggle to find movies that match your unique tastes?',
        iconPath: Assets.onboarding.icons.film,
        questions: [
          OnboardingQuestionItem(emoji: '😞', title: 'Often'),
          OnboardingQuestionItem(emoji: '😕', title: 'Sometimes'),
          OnboardingQuestionItem(emoji: '😊', title: 'Rarely'),
        ],
      ),
    ];

    final List<Widget> pages = [
      SocialTrustPage(changePage: changePage),
      ...questionPages,
      ExtraPage(changePage: changePage),
      const PaywallPage(),
    ];

    return MTScafold(
      backgroundColor: t.colors.surface,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,
      ),
    );
  }
}
