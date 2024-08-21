import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_body.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_header.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: t.spacing.x6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: t.spacing.x4),
            child: const HomeScreenHeader(),
          ),
          SizedBox(height: t.spacing.x4),
          const Expanded(child: HomeScreenBody()),
        ],
      ),
    );
  }
}
