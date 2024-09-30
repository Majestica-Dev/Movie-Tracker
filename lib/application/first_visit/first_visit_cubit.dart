import 'package:movie_tracker/infrastructure/first_visit/first_visit_pref_manager.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirstVisitCubit extends Cubit<bool> {
  final FirstVisitPrefManager _firstVisitPrefManager;

  FirstVisitCubit(this._firstVisitPrefManager)
      : super(_firstVisitPrefManager.isFirstVisit);

  Future<void> recordVisit() async =>
      await _firstVisitPrefManager.recordVisit();
}
