import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/presentation/app/listeners/movie_saver_bloc_listener.dart';

class AppGlobalListeners extends StatelessWidget {
  final Widget child;

  const AppGlobalListeners({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        MovieSaverBlocListener(),
      ],
      child: child,
    );
  }
}
