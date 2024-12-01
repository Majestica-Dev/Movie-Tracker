import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:majestica_ds/majestica_ds.dart';

import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/application/premium_checker/premium_checker_bloc.dart';
import 'package:movie_tracker/presentation/core/extensions/premium_checker/premium_checker_x.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_body.dart';
import 'package:movie_tracker/presentation/home/widgets/home_screen_header.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  final bool isFromOnboarding;

  const HomeScreen({
    required this.isFromOnboarding,
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool get isPremiumChecked =>
      context.read<PremiumCheckerBloc>().state.isChecked;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        checkAndOpenRomanceMonthPaywall();
      },
    );

    super.initState();
  }

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

  void checkAndOpenRomanceMonthPaywall() {
    while (!isPremiumChecked) {
      Future.delayed(const Duration(milliseconds: 100));
    }

    final bool hasPremium = context.read<PremiumCheckerBloc>().state.hasPremium;

    if (!widget.isFromOnboarding && !hasPremium) {
      Timer(
        const Duration(milliseconds: 300),
        () => context.router.push(
          BlackFridayPaywallRoute(isFromOnboarding: false),
        ),
      );
    }
  }
}
