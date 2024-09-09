import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/presentation/onboarding/models/onboarding_question_item.dart';

class OnboardingQuestionView extends StatefulWidget {
  final List<OnboardingQuestionItem> items;
  final VoidCallback changePage;
  final bool isMultiSelect;

  const OnboardingQuestionView({
    required this.items,
    required this.changePage,
    required this.isMultiSelect,
    super.key,
  });

  @override
  State<OnboardingQuestionView> createState() => _OnboardingQuestionViewState();
}

class _OnboardingQuestionViewState extends State<OnboardingQuestionView> {
  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: List.generate(
        widget.items.length,
        (i) {
          final item = widget.items[i];

          return Selector(
            margin: EdgeInsets.only(
              bottom: widget.items.length == i + 1 ? 0 : t.spacing.x2,
            ),
            showRadio: false,
            value: selectedItems.contains(i),
            onChanged: (value) {
              if (value) {
                setState(() {
                  selectedItems.add(i);
                });
              } else {
                setState(() {
                  selectedItems.remove(i);
                });
              }

              if (widget.isMultiSelect) return;

              widget.changePage();
            },
            body: Row(
              children: [
                Text(
                  item.emoji,
                  style: t.textTheme.title1Bold,
                ),
                SizedBox(width: t.spacing.x3),
                Text(item.title)
              ],
            ),
          );
        },
      ),
    );
  }
}
