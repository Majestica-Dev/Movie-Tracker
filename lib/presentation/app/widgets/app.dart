import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/di/locator.dart';
import 'package:movie_tracker/gen/fonts.gen.dart';
import 'package:movie_tracker/presentation/app/providers/app_global_providers.dart';
import 'package:movie_tracker/presentation/core/theme/colors.dart';
import 'package:movie_tracker/presentation/core/theme/text_theme.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        boldText: false,
        textScaler: TextScaler.noScaling,
      ),
      child: MDSTheme(
        useOverlaySupport: true,
        data: MDSThemeData(
          colors: MTColors.colors,
          textTheme: MTTextTheme.defaultTheme,
        ),
        child: AppGlobalProviders(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: FontFamily.sFPro,
            ),
            routerConfig: Locator.appRouter.config(),
          ),
        ),
      ),
    );
  }
}
