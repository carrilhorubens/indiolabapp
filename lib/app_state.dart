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
      _categoria = (await secureStorage.getStringList('ff_categoria'))
              ?.map((x) {
                try {
                  return CategoriaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _categoria;
    });
    await _safeInitAsync(() async {
      _produto = (await secureStorage.getStringList('ff_produto'))
              ?.map((x) {
                try {
                  return ProdutoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _produto;
    });
    await _safeInitAsync(() async {
      _material = (await secureStorage.getStringList('ff_material'))
              ?.map((x) {
                try {
                  return MaterialStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _material;
    });
    await _safeInitAsync(() async {
      _tecnologia = (await secureStorage.getStringList('ff_tecnologia'))
              ?.map((x) {
                try {
                  return TecnologiaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tecnologia;
    });
    await _safeInitAsync(() async {
      _grupos = (await secureStorage.getStringList('ff_grupos'))
              ?.map((x) {
                try {
                  return GrupoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _grupos;
    });
    await _safeInitAsync(() async {
      _catGrupo = await secureStorage.getInt('ff_catGrupo') ?? _catGrupo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<CategoriaStruct> _categoria = [
    CategoriaStruct.fromSerializableMap(jsonDecode(
        '{\"cat_ref\":\"1\",\"cat_status\":\"true\",\"cat_nome\":\"MULTIFOCAL\",\"cat_descricao\":\"Lentes Multifocais\",\"cat_grupo\":\"1\"}')),
    CategoriaStruct.fromSerializableMap(jsonDecode(
        '{\"cat_ref\":\"2\",\"cat_status\":\"true\",\"cat_nome\":\"BIFOCAL\",\"cat_descricao\":\"Lentes Bifocais\",\"cat_grupo\":\"2\"}')),
    CategoriaStruct.fromSerializableMap(jsonDecode(
        '{\"cat_ref\":\"3\",\"cat_status\":\"true\",\"cat_nome\":\"TRATAMENTO\",\"cat_descricao\":\"Tratamentos\",\"cat_grupo\":\"3\"}'))
  ];
  List<CategoriaStruct> get categoria => _categoria;
  set categoria(List<CategoriaStruct> _value) {
    _categoria = _value;
    secureStorage.setStringList(
        'ff_categoria', _value.map((x) => x.serialize()).toList());
  }

  void deleteCategoria() {
    secureStorage.delete(key: 'ff_categoria');
  }

  void addToCategoria(CategoriaStruct _value) {
    _categoria.add(_value);
    secureStorage.setStringList(
        'ff_categoria', _categoria.map((x) => x.serialize()).toList());
  }

  void removeFromCategoria(CategoriaStruct _value) {
    _categoria.remove(_value);
    secureStorage.setStringList(
        'ff_categoria', _categoria.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategoria(int _index) {
    _categoria.removeAt(_index);
    secureStorage.setStringList(
        'ff_categoria', _categoria.map((x) => x.serialize()).toList());
  }

  void updateCategoriaAtIndex(
    int _index,
    CategoriaStruct Function(CategoriaStruct) updateFn,
  ) {
    _categoria[_index] = updateFn(_categoria[_index]);
    secureStorage.setStringList(
        'ff_categoria', _categoria.map((x) => x.serialize()).toList());
  }

  List<ProdutoStruct> _produto = [];
  List<ProdutoStruct> get produto => _produto;
  set produto(List<ProdutoStruct> _value) {
    _produto = _value;
    secureStorage.setStringList(
        'ff_produto', _value.map((x) => x.serialize()).toList());
  }

  void deleteProduto() {
    secureStorage.delete(key: 'ff_produto');
  }

  void addToProduto(ProdutoStruct _value) {
    _produto.add(_value);
    secureStorage.setStringList(
        'ff_produto', _produto.map((x) => x.serialize()).toList());
  }

  void removeFromProduto(ProdutoStruct _value) {
    _produto.remove(_value);
    secureStorage.setStringList(
        'ff_produto', _produto.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProduto(int _index) {
    _produto.removeAt(_index);
    secureStorage.setStringList(
        'ff_produto', _produto.map((x) => x.serialize()).toList());
  }

  void updateProdutoAtIndex(
    int _index,
    ProdutoStruct Function(ProdutoStruct) updateFn,
  ) {
    _produto[_index] = updateFn(_produto[_index]);
    secureStorage.setStringList(
        'ff_produto', _produto.map((x) => x.serialize()).toList());
  }

  List<MaterialStruct> _material = [];
  List<MaterialStruct> get material => _material;
  set material(List<MaterialStruct> _value) {
    _material = _value;
    secureStorage.setStringList(
        'ff_material', _value.map((x) => x.serialize()).toList());
  }

  void deleteMaterial() {
    secureStorage.delete(key: 'ff_material');
  }

  void addToMaterial(MaterialStruct _value) {
    _material.add(_value);
    secureStorage.setStringList(
        'ff_material', _material.map((x) => x.serialize()).toList());
  }

  void removeFromMaterial(MaterialStruct _value) {
    _material.remove(_value);
    secureStorage.setStringList(
        'ff_material', _material.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMaterial(int _index) {
    _material.removeAt(_index);
    secureStorage.setStringList(
        'ff_material', _material.map((x) => x.serialize()).toList());
  }

  void updateMaterialAtIndex(
    int _index,
    MaterialStruct Function(MaterialStruct) updateFn,
  ) {
    _material[_index] = updateFn(_material[_index]);
    secureStorage.setStringList(
        'ff_material', _material.map((x) => x.serialize()).toList());
  }

  List<TecnologiaStruct> _tecnologia = [];
  List<TecnologiaStruct> get tecnologia => _tecnologia;
  set tecnologia(List<TecnologiaStruct> _value) {
    _tecnologia = _value;
    secureStorage.setStringList(
        'ff_tecnologia', _value.map((x) => x.serialize()).toList());
  }

  void deleteTecnologia() {
    secureStorage.delete(key: 'ff_tecnologia');
  }

  void addToTecnologia(TecnologiaStruct _value) {
    _tecnologia.add(_value);
    secureStorage.setStringList(
        'ff_tecnologia', _tecnologia.map((x) => x.serialize()).toList());
  }

  void removeFromTecnologia(TecnologiaStruct _value) {
    _tecnologia.remove(_value);
    secureStorage.setStringList(
        'ff_tecnologia', _tecnologia.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTecnologia(int _index) {
    _tecnologia.removeAt(_index);
    secureStorage.setStringList(
        'ff_tecnologia', _tecnologia.map((x) => x.serialize()).toList());
  }

  void updateTecnologiaAtIndex(
    int _index,
    TecnologiaStruct Function(TecnologiaStruct) updateFn,
  ) {
    _tecnologia[_index] = updateFn(_tecnologia[_index]);
    secureStorage.setStringList(
        'ff_tecnologia', _tecnologia.map((x) => x.serialize()).toList());
  }

  List<GrupoStruct> _grupos = [
    GrupoStruct.fromSerializableMap(jsonDecode(
        '{\"gru_ref\":\"1\",\"gru_status\":\"true\",\"gru_nome\":\"DIGITAL\",\"gru_descricao\":\"Lentes Digitais\"}')),
    GrupoStruct.fromSerializableMap(jsonDecode(
        '{\"gru_ref\":\"2\",\"gru_status\":\"true\",\"gru_nome\":\"TRADICIONAL\",\"gru_descricao\":\"Lentes Tradicionais\"}')),
    GrupoStruct.fromSerializableMap(jsonDecode(
        '{\"gru_ref\":\"3\",\"gru_status\":\"true\",\"gru_nome\":\"SERVICO\",\"gru_descricao\":\"Servicos\"}'))
  ];
  List<GrupoStruct> get grupos => _grupos;
  set grupos(List<GrupoStruct> _value) {
    _grupos = _value;
    secureStorage.setStringList(
        'ff_grupos', _value.map((x) => x.serialize()).toList());
  }

  void deleteGrupos() {
    secureStorage.delete(key: 'ff_grupos');
  }

  void addToGrupos(GrupoStruct _value) {
    _grupos.add(_value);
    secureStorage.setStringList(
        'ff_grupos', _grupos.map((x) => x.serialize()).toList());
  }

  void removeFromGrupos(GrupoStruct _value) {
    _grupos.remove(_value);
    secureStorage.setStringList(
        'ff_grupos', _grupos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGrupos(int _index) {
    _grupos.removeAt(_index);
    secureStorage.setStringList(
        'ff_grupos', _grupos.map((x) => x.serialize()).toList());
  }

  void updateGruposAtIndex(
    int _index,
    GrupoStruct Function(GrupoStruct) updateFn,
  ) {
    _grupos[_index] = updateFn(_grupos[_index]);
    secureStorage.setStringList(
        'ff_grupos', _grupos.map((x) => x.serialize()).toList());
  }

  int _catGrupo = 0;
  int get catGrupo => _catGrupo;
  set catGrupo(int _value) {
    _catGrupo = _value;
    secureStorage.setInt('ff_catGrupo', _value);
  }

  void deleteCatGrupo() {
    secureStorage.delete(key: 'ff_catGrupo');
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
