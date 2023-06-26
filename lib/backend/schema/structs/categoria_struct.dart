// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaStruct extends BaseStruct {
  CategoriaStruct({
    int? catRef,
    bool? catStatus,
    String? catNome,
    String? catDescricao,
    int? catGrupo,
  })  : _catRef = catRef,
        _catStatus = catStatus,
        _catNome = catNome,
        _catDescricao = catDescricao,
        _catGrupo = catGrupo;

  // "cat_ref" field.
  int? _catRef;
  int get catRef => _catRef ?? 0;
  set catRef(int? val) => _catRef = val;
  void incrementCatRef(int amount) => _catRef = catRef + amount;
  bool hasCatRef() => _catRef != null;

  // "cat_status" field.
  bool? _catStatus;
  bool get catStatus => _catStatus ?? false;
  set catStatus(bool? val) => _catStatus = val;
  bool hasCatStatus() => _catStatus != null;

  // "cat_nome" field.
  String? _catNome;
  String get catNome => _catNome ?? '';
  set catNome(String? val) => _catNome = val;
  bool hasCatNome() => _catNome != null;

  // "cat_descricao" field.
  String? _catDescricao;
  String get catDescricao => _catDescricao ?? '';
  set catDescricao(String? val) => _catDescricao = val;
  bool hasCatDescricao() => _catDescricao != null;

  // "cat_grupo" field.
  int? _catGrupo;
  int get catGrupo => _catGrupo ?? 0;
  set catGrupo(int? val) => _catGrupo = val;
  void incrementCatGrupo(int amount) => _catGrupo = catGrupo + amount;
  bool hasCatGrupo() => _catGrupo != null;

  static CategoriaStruct fromMap(Map<String, dynamic> data) => CategoriaStruct(
        catRef: castToType<int>(data['cat_ref']),
        catStatus: data['cat_status'] as bool?,
        catNome: data['cat_nome'] as String?,
        catDescricao: data['cat_descricao'] as String?,
        catGrupo: castToType<int>(data['cat_grupo']),
      );

  static CategoriaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CategoriaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'cat_ref': _catRef,
        'cat_status': _catStatus,
        'cat_nome': _catNome,
        'cat_descricao': _catDescricao,
        'cat_grupo': _catGrupo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cat_ref': serializeParam(
          _catRef,
          ParamType.int,
        ),
        'cat_status': serializeParam(
          _catStatus,
          ParamType.bool,
        ),
        'cat_nome': serializeParam(
          _catNome,
          ParamType.String,
        ),
        'cat_descricao': serializeParam(
          _catDescricao,
          ParamType.String,
        ),
        'cat_grupo': serializeParam(
          _catGrupo,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriaStruct(
        catRef: deserializeParam(
          data['cat_ref'],
          ParamType.int,
          false,
        ),
        catStatus: deserializeParam(
          data['cat_status'],
          ParamType.bool,
          false,
        ),
        catNome: deserializeParam(
          data['cat_nome'],
          ParamType.String,
          false,
        ),
        catDescricao: deserializeParam(
          data['cat_descricao'],
          ParamType.String,
          false,
        ),
        catGrupo: deserializeParam(
          data['cat_grupo'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoriaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriaStruct &&
        catRef == other.catRef &&
        catStatus == other.catStatus &&
        catNome == other.catNome &&
        catDescricao == other.catDescricao &&
        catGrupo == other.catGrupo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([catRef, catStatus, catNome, catDescricao, catGrupo]);
}

CategoriaStruct createCategoriaStruct({
  int? catRef,
  bool? catStatus,
  String? catNome,
  String? catDescricao,
  int? catGrupo,
}) =>
    CategoriaStruct(
      catRef: catRef,
      catStatus: catStatus,
      catNome: catNome,
      catDescricao: catDescricao,
      catGrupo: catGrupo,
    );
