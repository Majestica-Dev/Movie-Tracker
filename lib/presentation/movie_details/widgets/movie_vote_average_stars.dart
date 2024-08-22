import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class MovieVoteAverageStars extends StatelessWidget {
  final double rating;

  final double itemPadding;

  const MovieVoteAverageStars({
    required this.rating,
    this.itemPadding = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return RatingBar(
      itemCount: 10,
      initialRating: rating,
      ratingWidget: RatingWidget(
        full: PhosphorIcon(
          PhosphorIconsFill.star,
          color: t.colors.primaryHighContent,
        ),
        half: PhosphorIcon(
          PhosphorIconsFill.starHalf,
          color: t.colors.primaryHighContent,
        ),
        empty: PhosphorIcon(
          PhosphorIconsRegular.star,
          color: t.colors.primaryHighContainer,
        ),
      ),
      glow: false,
      updateOnDrag: true,
      allowHalfRating: true,
      itemSize: 15,
      itemPadding: EdgeInsets.only(right: itemPadding),
      ignoreGestures: true,
      onRatingUpdate: (double value) {},
    );
  }
}
