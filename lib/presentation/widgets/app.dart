import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/core/di/locator.dart';

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
            // colors: appTheme.colors,
            ),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // fontFamily: FontFamily.sFPro,
              // brightness: appTheme.platformBrightness,
              ),
          routerConfig: Locator.appRouter.config(),
        ),
      ),
    );
  }
}
