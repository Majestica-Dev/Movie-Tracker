import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/fisrt_visit/first_visit_cubit.dart';
import 'package:movie_tracker/gen/assets.gen.dart';

import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/scafold.dart';
import 'package:movie_tracker/presentation/onboarding/models/onboarding_question_item.dart';
import 'package:movie_tracker/presentation/onboarding/pages/paywall/paywall_page.dart';
import 'package:movie_tracker/presentation/onboarding/structures/onboarding_question_structure.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    void changePage() {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }

    final List<Widget> pages = [
      OnboardingQuestionStructure(
        isMultiSelect: false,
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
        isMultiSelect: false,
        changePage: () {
          context.read<FirstVisitCubit>().recordVisit();

          context.router.pushAndPopUntil(
            const HomeRoute(),
            predicate: (_) => false,
          );
        },
        title: 'How happy are you with your streaming recommendations?',
        iconPath: Assets.onboarding.icons.film,
        questions: [
          OnboardingQuestionItem(emoji: '😇', title: 'Very satisfied'),
          OnboardingQuestionItem(emoji: '🙂', title: 'Satisfied'),
          OnboardingQuestionItem(emoji: '🙁', title: 'Neutral'),
          OnboardingQuestionItem(emoji: '🙁', title: 'Dissatisfied'),
        ],
      ),
      const PaywallPage(),
    ];

    return MTScafold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,
      ),
    );
  }
}
