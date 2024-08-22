import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/saver/movie_saver_bloc.dart';
import 'package:movie_tracker/application/movie/watcher/movie_watcher_bloc.dart';
import 'package:movie_tracker/core/di/locator.dart';

class AppGlobalProviders extends StatelessWidget {
  final Widget child;

  const AppGlobalProviders({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieWatcherBloc>(
          lazy: false,
          create: (context) => Locator.movieWatcherBloc
            ..add(
              const MovieWatcherEvent.init(),
            ),
        ),
        BlocProvider<MovieSaverBloc>(
          create: (context) => Locator.movieSaverBloc,
        ),
      ],
      child: child,
    );
  }
}
