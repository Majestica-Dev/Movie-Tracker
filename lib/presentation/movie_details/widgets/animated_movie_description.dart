import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';

class AnimatedMovieDescription extends StatefulWidget {
  final String description;

  const AnimatedMovieDescription({
    required this.description,
    super.key,
  });

  @override
  State<AnimatedMovieDescription> createState() =>
      _AnimatedMovieDescriptionState();
}

class _AnimatedMovieDescriptionState extends State<AnimatedMovieDescription> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return GestureDetector(
      onTap: () {
        setState(() {
          expand = !expand;
        });
      },
      child: AnimatedDefaultTextStyle(
        maxLines: expand ? null : 2,
        overflow: expand ? TextOverflow.clip : TextOverflow.ellipsis,
        duration: const Duration(milliseconds: 300),
        style: t.textTheme.bodyMRegular
            .copyWith(color: t.colors.neutralHighContainer),
        child: Text(
          widget.description,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
