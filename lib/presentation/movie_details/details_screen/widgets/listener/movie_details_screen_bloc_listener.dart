import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';
import 'package:movie_tracker/presentation/core/toasts/succeeded_toast.dart';

class MovieDetailsScreenBlocListener extends StatelessWidget {
  final Widget child;

  const MovieDetailsScreenBlocListener({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieActorBloc, MovieActorState>(
      listener: (context, state) {
        state.mapOrNull(
          updatedIsFavorite: (updatedIsFavorite) {
            SucceededToast.show(
              message: updatedIsFavorite.isFavorite
                  ? 'Movie added to Favorites'
                  : 'Movie removed from Favorites',
            );
          },
        );
      },
      child: child,
    );
  }
}
