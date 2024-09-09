import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tracker/application/movie/ai_rec/form/movie_ai_rec_form_cubit.dart';
import 'package:movie_tracker/core/di/locator.dart';

class MovieAiRecFormSheetProviders extends StatelessWidget {
  final Widget child;
  final MovieAiRecFormState? movieAiRecFormState;

  const MovieAiRecFormSheetProviders({
    required this.child,
    required this.movieAiRecFormState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieAiRecFormCubit>(
          create: (context) =>
              Locator.movieAiRecFormCubit..init(movieAiRecFormState),
        )
      ],
      child: child,
    );
  }
}
