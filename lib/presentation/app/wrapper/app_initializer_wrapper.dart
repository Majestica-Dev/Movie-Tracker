// ignore_for_file: use_build_context_synchronously

import 'package:flutter/widgets.dart';
import 'package:flutter_app_badge/flutter_app_badge.dart';

class AppInitializerWrapper extends StatefulWidget {
  final Widget child;

  const AppInitializerWrapper({
    required this.child,
    super.key,
  });

  @override
  State<AppInitializerWrapper> createState() => _AppInitializerWrapperState();
}

class _AppInitializerWrapperState extends State<AppInitializerWrapper>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    FlutterAppBadge.count(0);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      FlutterAppBadge.count(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    super.dispose();

    WidgetsBinding.instance.removeObserver(this);
  }
}
