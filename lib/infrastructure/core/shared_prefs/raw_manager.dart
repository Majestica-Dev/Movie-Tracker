import '../../../core/extensions/kotlin_object_x.dart';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPrefsRawManager {
  final SharedPreferences _sharedPreferences;

  SharedPrefsRawManager(this._sharedPreferences);

  bool? getBool(String key) => _sharedPreferences.getBool(key);

  Future<bool> setBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);

  String? getString(String key) => _sharedPreferences.getString(key);

  Future<bool> setString(String key, String value) =>
      _sharedPreferences.setString(key, value);

  Future<void> removeKey(String key) => _sharedPreferences.remove(key);

  int? getInt(String key) => _sharedPreferences.getInt(key);

  Future<bool> setInt(String key, int value) =>
      _sharedPreferences.setInt(key, value);

  T? getEnum<T>(Iterable<T> values, String key) =>
      _sharedPreferences.getString(key)?.let((it) =>
          values.firstWhereOrNull((selector) => selector.toString() == it));

  Future<bool> setEnum<T>(String key, T value) =>
      _sharedPreferences.setString(key, value.toString());

  Future<bool> setStringList(String key, List<String> value) =>
      _sharedPreferences.setStringList(key, value);

  List<String>? getStringList(String key) =>
      _sharedPreferences.getStringList(key);
}
