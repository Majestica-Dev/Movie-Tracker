import 'package:flutter/material.dart';

import 'package:majestica_ds/majestica_ds.dart';
import 'package:auto_route/auto_route.dart';
import 'package:movie_tracker/presentation/core/constants/theme/colors.dart';
import 'package:movie_tracker/presentation/core/modals/cupertion_style_notification_alert_dialog.dart';
import 'package:movie_tracker/presentation/core/router/app_router.gr.dart';
import 'package:movie_tracker/presentation/core/scafold.dart';
import 'package:movie_tracker/presentation/core/widgets/launch_buttons_tile.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        CupertionStyleNotificationAlertDialog.checkAndShow(context);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MTScafold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.intro.background.path),
          ),
        ),
        child: MDSTheme(
          data: context.mdsTheme.copyWith(
            colors: MTColors.glossy,
          ),
          child: const _IntroScreenBody(),
        ),
      ),
    );
  }
}

class _IntroScreenBody extends StatelessWidget {
  const _IntroScreenBody();

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Padding(
      padding: EdgeInsets.only(
        left: t.spacing.x5,
        right: t.spacing.x5,
        top: 78,
        bottom: 44,
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.icons.appIcon.path,
                  width: 64,
                ),
                SizedBox(height: t.spacing.x3),
                Text(
                  'WatchList',
                  style: t.textTheme.titleLargeBold.copyWith(
                    color: t.colors.primaryHighContent,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: t.spacing.x4),
                Text(
                  'Find you next perfect movie in 1 minute',
                  style: t.textTheme.title3Regular.copyWith(
                    color: t.colors.primaryHighContent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PrimaryButton(
            expand: true,
            buttonSize: MDSButtonSize.L,
            text: 'Continue',
            onPressed: () {
              context.router.pushAndPopUntil(
                const OnboardingRoute(),
                predicate: (route) => false,
              );
            },
          ),
          SizedBox(height: t.spacing.x3),
          const LaunchButtonsTile(showRestore: false),
        ],
      ),
    );
  }
}
