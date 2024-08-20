import 'dart:io';
import 'package:drift/drift.dart';

import 'package:drift/native.dart';

import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'tables/movie_table.dart';

part 'drift_database.g.dart';

@singleton
@DriftDatabase(tables: [MovieTable])
class AppDriftDatabase extends _$AppDriftDatabase {
  AppDriftDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(
    () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      return NativeDatabase.createInBackground(file);
    },
  );
}
