import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _estados = (await secureStorage.getStringList('ff_estados'))
              ?.map((x) {
                try {
                  return DtEstadosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _estados;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _catGrupo = 0;
  int get catGrupo => _catGrupo;
  set catGrupo(int _value) {
    _catGrupo = _value;
  }

  List<DtEstadosStruct> _estados = [];
  List<DtEstadosStruct> get estados => _estados;
  set estados(List<DtEstadosStruct> _value) {
    _estados = _value;
    secureStorage.setStringList(
        'ff_estados', _value.map((x) => x.serialize()).toList());
  }

  void deleteEstados() {
    secureStorage.delete(key: 'ff_estados');
  }

  void addToEstados(DtEstadosStruct _value) {
    _estados.add(_value);
    secureStorage.setStringList(
        'ff_estados', _estados.map((x) => x.serialize()).toList());
  }

  void removeFromEstados(DtEstadosStruct _value) {
    _estados.remove(_value);
    secureStorage.setStringList(
        'ff_estados', _estados.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromEstados(int _index) {
    _estados.removeAt(_index);
    secureStorage.setStringList(
        'ff_estados', _estados.map((x) => x.serialize()).toList());
  }

  void updateEstadosAtIndex(
    int _index,
    DtEstadosStruct Function(DtEstadosStruct) updateFn,
  ) {
    _estados[_index] = updateFn(_estados[_index]);
    secureStorage.setStringList(
        'ff_estados', _estados.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
