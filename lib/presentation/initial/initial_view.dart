import 'dart:async';
import 'package:auto_route/auto_route.dart';

import 'package:movie_tracker/application/first_visit/first_visit_cubit.dart';

import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

/// This widget is the initial route of the app.
///
/// It decides where and when to navigate based

@RoutePage()
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();

    unawaited(_openFirstScreen(context));
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square();
  }

  Future<void> _openFirstScreen(BuildContext context) async {
    final isFirstVisit = context.read<FirstVisitCubit>().state;

    if (isFirstVisit) {
      context.router.replace(
        const IntroRoute(),
      );
    } else {
      context.router.replace(
        const BaseRoute(),
      );
    }

    FlutterNativeSplash.remove();
  }
}
