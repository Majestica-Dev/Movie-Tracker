import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/internal/versioned_schema.dart';

import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';

import 'package:injectable/injectable.dart';
import 'package:movie_tracker/domain/movie/entities/movie.dart';
import 'package:movie_tracker/domain/movie/entities/ai_rec/watch_status.dart';
import 'package:movie_tracker/infrastructure/core/local_database/migration/drift_migration.dart';
import 'package:path/path.dart' as p;
import 'package:drift_dev/api/migrations.dart';
import 'package:path_provider/path_provider.dart';

part 'tables/movie_table.dart';

part 'drift_database.g.dart';

@singleton
@DriftDatabase(tables: [MovieTable])
class AppDriftDatabase extends _$AppDriftDatabase {
  AppDriftDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
      },
      onUpgrade: (m, from, to) async {
        await customStatement('PRAGMA foreign_keys = OFF');

        await transaction(
          () => VersionedSchema.runMigrationSteps(
            migrator: m,
            from: from,
            to: to,
            steps: migrationSteps(
              from1To2: (m, schema) async {
                await m.addColumn(
                  schema.movieTable,
                  schema.movieTable.trailerLink,
                );
              },
              from2To3: (Migrator m, Schema3 schema) async {
                await m.addColumn(
                  schema.movieTable,
                  schema.movieTable.isFavorite,
                );
              },
            ),
          ),
        );
      },
      beforeOpen: (details) async {
        // This check pulls in a fair amount of code that's not needed
        // anywhere else, so we recommend only doing it in debug builds.
        if (kDebugMode) {
          await validateDatabaseSchema();
        }

        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
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
