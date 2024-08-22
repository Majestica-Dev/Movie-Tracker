import 'package:movie_tracker/infrastructure/fisrt_visit/fisrt_visit_pref_manager.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirstVisitCubit extends Cubit<bool> {
  final FisrtVisitPrefManager _fisrtVisitPrefManager;

  FirstVisitCubit(this._fisrtVisitPrefManager)
      : super(_fisrtVisitPrefManager.isFirstVisit);

  Future<void> recordVisit() async =>
      await _fisrtVisitPrefManager.recordVisit();
}
