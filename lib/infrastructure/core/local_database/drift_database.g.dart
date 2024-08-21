// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, MovieTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _posterImageUrlMeta =
      const VerificationMeta('posterImageUrl');
  @override
  late final GeneratedColumn<String> posterImageUrl = GeneratedColumn<String>(
      'poster_image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<WatchStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<WatchStatus>($MovieTableTable.$converterstatus);
  static const VerificationMeta _editedAtMeta =
      const VerificationMeta('editedAt');
  @override
  late final GeneratedColumn<DateTime> editedAt = GeneratedColumn<DateTime>(
      'edited_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, posterImageUrl, status, editedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'Movie Table';
  @override
  VerificationContext validateIntegrity(Insertable<MovieTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('poster_image_url')) {
      context.handle(
          _posterImageUrlMeta,
          posterImageUrl.isAcceptableOrUnknown(
              data['poster_image_url']!, _posterImageUrlMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('edited_at')) {
      context.handle(_editedAtMeta,
          editedAt.isAcceptableOrUnknown(data['edited_at']!, _editedAtMeta));
    } else if (isInserting) {
      context.missing(_editedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MovieTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      posterImageUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}poster_image_url']),
      status: $MovieTableTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      editedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}edited_at'])!,
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<WatchStatus, String, String> $converterstatus =
      const EnumNameConverter<WatchStatus>(WatchStatus.values);
}

class MovieTableData extends DataClass implements Insertable<MovieTableData> {
  final String id;
  final String title;
  final String? description;
  final String? posterImageUrl;
  final WatchStatus status;
  final DateTime editedAt;
  const MovieTableData(
      {required this.id,
      required this.title,
      this.description,
      this.posterImageUrl,
      required this.status,
      required this.editedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || posterImageUrl != null) {
      map['poster_image_url'] = Variable<String>(posterImageUrl);
    }
    {
      map['status'] =
          Variable<String>($MovieTableTable.$converterstatus.toSql(status));
    }
    map['edited_at'] = Variable<DateTime>(editedAt);
    return map;
  }

  MovieTableCompanion toCompanion(bool nullToAbsent) {
    return MovieTableCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      posterImageUrl: posterImageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(posterImageUrl),
      status: Value(status),
      editedAt: Value(editedAt),
    );
  }

  factory MovieTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieTableData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      posterImageUrl: serializer.fromJson<String?>(json['posterImageUrl']),
      status: $MovieTableTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      editedAt: serializer.fromJson<DateTime>(json['editedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'posterImageUrl': serializer.toJson<String?>(posterImageUrl),
      'status': serializer
          .toJson<String>($MovieTableTable.$converterstatus.toJson(status)),
      'editedAt': serializer.toJson<DateTime>(editedAt),
    };
  }

  MovieTableData copyWith(
          {String? id,
          String? title,
          Value<String?> description = const Value.absent(),
          Value<String?> posterImageUrl = const Value.absent(),
          WatchStatus? status,
          DateTime? editedAt}) =>
      MovieTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description.present ? description.value : this.description,
        posterImageUrl:
            posterImageUrl.present ? posterImageUrl.value : this.posterImageUrl,
        status: status ?? this.status,
        editedAt: editedAt ?? this.editedAt,
      );
  MovieTableData copyWithCompanion(MovieTableCompanion data) {
    return MovieTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      posterImageUrl: data.posterImageUrl.present
          ? data.posterImageUrl.value
          : this.posterImageUrl,
      status: data.status.present ? data.status.value : this.status,
      editedAt: data.editedAt.present ? data.editedAt.value : this.editedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('posterImageUrl: $posterImageUrl, ')
          ..write('status: $status, ')
          ..write('editedAt: $editedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, description, posterImageUrl, status, editedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.posterImageUrl == this.posterImageUrl &&
          other.status == this.status &&
          other.editedAt == this.editedAt);
}

class MovieTableCompanion extends UpdateCompanion<MovieTableData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<String?> posterImageUrl;
  final Value<WatchStatus> status;
  final Value<DateTime> editedAt;
  final Value<int> rowid;
  const MovieTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.posterImageUrl = const Value.absent(),
    this.status = const Value.absent(),
    this.editedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MovieTableCompanion.insert({
    required String id,
    required String title,
    this.description = const Value.absent(),
    this.posterImageUrl = const Value.absent(),
    required WatchStatus status,
    required DateTime editedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        status = Value(status),
        editedAt = Value(editedAt);
  static Insertable<MovieTableData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? posterImageUrl,
    Expression<String>? status,
    Expression<DateTime>? editedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (posterImageUrl != null) 'poster_image_url': posterImageUrl,
      if (status != null) 'status': status,
      if (editedAt != null) 'edited_at': editedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MovieTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String?>? description,
      Value<String?>? posterImageUrl,
      Value<WatchStatus>? status,
      Value<DateTime>? editedAt,
      Value<int>? rowid}) {
    return MovieTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      posterImageUrl: posterImageUrl ?? this.posterImageUrl,
      status: status ?? this.status,
      editedAt: editedAt ?? this.editedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (posterImageUrl.present) {
      map['poster_image_url'] = Variable<String>(posterImageUrl.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $MovieTableTable.$converterstatus.toSql(status.value));
    }
    if (editedAt.present) {
      map['edited_at'] = Variable<DateTime>(editedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('posterImageUrl: $posterImageUrl, ')
          ..write('status: $status, ')
          ..write('editedAt: $editedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDriftDatabase extends GeneratedDatabase {
  _$AppDriftDatabase(QueryExecutor e) : super(e);
  $AppDriftDatabaseManager get managers => $AppDriftDatabaseManager(this);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieTable];
}

typedef $$MovieTableTableCreateCompanionBuilder = MovieTableCompanion Function({
  required String id,
  required String title,
  Value<String?> description,
  Value<String?> posterImageUrl,
  required WatchStatus status,
  required DateTime editedAt,
  Value<int> rowid,
});
typedef $$MovieTableTableUpdateCompanionBuilder = MovieTableCompanion Function({
  Value<String> id,
  Value<String> title,
  Value<String?> description,
  Value<String?> posterImageUrl,
  Value<WatchStatus> status,
  Value<DateTime> editedAt,
  Value<int> rowid,
});

class $$MovieTableTableFilterComposer
    extends FilterComposer<_$AppDriftDatabase, $MovieTableTable> {
  $$MovieTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get posterImageUrl => $state.composableBuilder(
      column: $state.table.posterImageUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<WatchStatus, WatchStatus, String> get status =>
      $state.composableBuilder(
          column: $state.table.status,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get editedAt => $state.composableBuilder(
      column: $state.table.editedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$MovieTableTableOrderingComposer
    extends OrderingComposer<_$AppDriftDatabase, $MovieTableTable> {
  $$MovieTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get posterImageUrl => $state.composableBuilder(
      column: $state.table.posterImageUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get editedAt => $state.composableBuilder(
      column: $state.table.editedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$MovieTableTableTableManager extends RootTableManager<
    _$AppDriftDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$AppDriftDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()> {
  $$MovieTableTableTableManager(_$AppDriftDatabase db, $MovieTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MovieTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MovieTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> posterImageUrl = const Value.absent(),
            Value<WatchStatus> status = const Value.absent(),
            Value<DateTime> editedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MovieTableCompanion(
            id: id,
            title: title,
            description: description,
            posterImageUrl: posterImageUrl,
            status: status,
            editedAt: editedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            Value<String?> description = const Value.absent(),
            Value<String?> posterImageUrl = const Value.absent(),
            required WatchStatus status,
            required DateTime editedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              MovieTableCompanion.insert(
            id: id,
            title: title,
            description: description,
            posterImageUrl: posterImageUrl,
            status: status,
            editedAt: editedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MovieTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDriftDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$AppDriftDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()>;

class $AppDriftDatabaseManager {
  final _$AppDriftDatabase _db;
  $AppDriftDatabaseManager(this._db);
  $$MovieTableTableTableManager get movieTable =>
      $$MovieTableTableTableManager(_db, _db.movieTable);
}
