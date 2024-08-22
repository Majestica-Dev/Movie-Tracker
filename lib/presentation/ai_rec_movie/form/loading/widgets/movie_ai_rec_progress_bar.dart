import 'dart:async';

import 'package:flutter/material.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:mccounting_text/mccounting_text.dart';

class MovieAiRecProgressBar extends StatefulWidget {
  final String title;

  final VoidCallback? onAnimationEnd;

  final bool show;

  const MovieAiRecProgressBar({
    required this.title,
    required this.onAnimationEnd,
    required this.show,
    super.key,
  });

  const MovieAiRecProgressBar.simple({
    required this.title,
    this.show = true,
    this.onAnimationEnd,
    super.key,
  });

  @override
  State<MovieAiRecProgressBar> createState() => _MovieAiRecProgressBarState();
}

class _MovieAiRecProgressBarState extends State<MovieAiRecProgressBar> {
  bool finished = false;

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return AnimatedOpacity(
      opacity: widget.show ? 1 : 0,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
      child: widget.show
          ? SizedBox(
              height: 37,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        widget.title,
                        style: t.textTheme.bodySBold.copyWith(
                          color: t.colors.neutralHighContent,
                        ),
                      ),
                      const Spacer(),
                      finished
                          ? PhosphorIcon(
                              PhosphorIconsFill.checkCircle,
                              size: 20,
                              color: t.colors.primaryHighContent,
                            )
                          : McCountingText(
                              begin: 0,
                              end: 100,
                              style: t.textTheme.bodySRegular.copyWith(
                                color: t.colors.neutralMedContainer,
                              ),
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeIn,
                            ),
                      if (!finished) ...[
                        Text(
                          '%',
                          style: t.textTheme.bodySRegular.copyWith(
                            color: t.colors.neutralMedContainer,
                          ),
                        )
                      ]
                    ],
                  ),
                  const Spacer(),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeIn,
                    child: finished
                        ? const MDSDivider(
                            contrast: DividerContrast.low,
                          )
                        : ProgressBar(
                            progressBarSize: finished
                                ? ProgressBarSize.S
                                : ProgressBarSize.M,
                            percent: 1,
                            animationDuration: 1500,
                            animation: true,
                            onAnimationEnd: () async {
                              Future.delayed(const Duration(milliseconds: 70));

                              setState(() {
                                finished = true;
                              });

                              Timer(
                                const Duration(milliseconds: 150),
                                widget.onAnimationEnd ?? () {},
                              );
                            },
                          ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
