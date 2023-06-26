// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoStruct extends BaseStruct {
  ProdutoStruct({
    bool? proStatus,
    String? proNome,
    String? proDescricao,
    String? proLogo,
    CategoriaStruct? proCategoria,
  })  : _proStatus = proStatus,
        _proNome = proNome,
        _proDescricao = proDescricao,
        _proLogo = proLogo,
        _proCategoria = proCategoria;

  // "pro_status" field.
  bool? _proStatus;
  bool get proStatus => _proStatus ?? false;
  set proStatus(bool? val) => _proStatus = val;
  bool hasProStatus() => _proStatus != null;

  // "pro_nome" field.
  String? _proNome;
  String get proNome => _proNome ?? '';
  set proNome(String? val) => _proNome = val;
  bool hasProNome() => _proNome != null;

  // "pro_descricao" field.
  String? _proDescricao;
  String get proDescricao => _proDescricao ?? '';
  set proDescricao(String? val) => _proDescricao = val;
  bool hasProDescricao() => _proDescricao != null;

  // "pro_logo" field.
  String? _proLogo;
  String get proLogo => _proLogo ?? '';
  set proLogo(String? val) => _proLogo = val;
  bool hasProLogo() => _proLogo != null;

  // "pro_categoria" field.
  CategoriaStruct? _proCategoria;
  CategoriaStruct get proCategoria => _proCategoria ?? CategoriaStruct();
  set proCategoria(CategoriaStruct? val) => _proCategoria = val;
  void updateProCategoria(Function(CategoriaStruct) updateFn) =>
      updateFn(_proCategoria ??= CategoriaStruct());
  bool hasProCategoria() => _proCategoria != null;

  static ProdutoStruct fromMap(Map<String, dynamic> data) => ProdutoStruct(
        proStatus: data['pro_status'] as bool?,
        proNome: data['pro_nome'] as String?,
        proDescricao: data['pro_descricao'] as String?,
        proLogo: data['pro_logo'] as String?,
        proCategoria: CategoriaStruct.maybeFromMap(data['pro_categoria']),
      );

  static ProdutoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProdutoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'pro_status': _proStatus,
        'pro_nome': _proNome,
        'pro_descricao': _proDescricao,
        'pro_logo': _proLogo,
        'pro_categoria': _proCategoria?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pro_status': serializeParam(
          _proStatus,
          ParamType.bool,
        ),
        'pro_nome': serializeParam(
          _proNome,
          ParamType.String,
        ),
        'pro_descricao': serializeParam(
          _proDescricao,
          ParamType.String,
        ),
        'pro_logo': serializeParam(
          _proLogo,
          ParamType.String,
        ),
        'pro_categoria': serializeParam(
          _proCategoria,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProdutoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutoStruct(
        proStatus: deserializeParam(
          data['pro_status'],
          ParamType.bool,
          false,
        ),
        proNome: deserializeParam(
          data['pro_nome'],
          ParamType.String,
          false,
        ),
        proDescricao: deserializeParam(
          data['pro_descricao'],
          ParamType.String,
          false,
        ),
        proLogo: deserializeParam(
          data['pro_logo'],
          ParamType.String,
          false,
        ),
        proCategoria: deserializeStructParam(
          data['pro_categoria'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoriaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProdutoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoStruct &&
        proStatus == other.proStatus &&
        proNome == other.proNome &&
        proDescricao == other.proDescricao &&
        proLogo == other.proLogo &&
        proCategoria == other.proCategoria;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([proStatus, proNome, proDescricao, proLogo, proCategoria]);
}

ProdutoStruct createProdutoStruct({
  bool? proStatus,
  String? proNome,
  String? proDescricao,
  String? proLogo,
  CategoriaStruct? proCategoria,
}) =>
    ProdutoStruct(
      proStatus: proStatus,
      proNome: proNome,
      proDescricao: proDescricao,
      proLogo: proLogo,
      proCategoria: proCategoria ?? CategoriaStruct(),
    );
