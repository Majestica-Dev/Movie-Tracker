import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';
import 'package:movie_tracker/application/movie/actor/movie_actor_bloc.dart';

abstract final class RemoveMovieModal {
  static void show(BuildContext context, {required String id}) {
    final t = context.mdsTheme;

    MDSModal(
      margin: EdgeInsets.symmetric(horizontal: t.spacing.x4),
      body: ModalContent(
        icon: const PhosphorIcon(PhosphorIconsDuotone.trash),
        tite: 'Are you sure you want to remove the movie?',
        primaryButton: PrimaryButton(
          expand: true,
          buttonSize: MDSButtonSize.L,
          text: 'Yes Remove',
          onPressed: () {
            context.read<MovieActorBloc>().add(MovieActorEvent.remove(id: id));

            context.router.popUntilRoot();
          },
        ),
        secondaryButton: SecondaryButton(
          expand: true,
          buttonSize: MDSButtonSize.L,
          text: 'Cancel',
          onPressed: () => context.router.maybePop(),
        ),
      ),
    ).show(
      context: context,
      barrierDismissible: true,
    );
  }
}
