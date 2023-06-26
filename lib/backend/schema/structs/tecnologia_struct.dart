// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TecnologiaStruct extends BaseStruct {
  TecnologiaStruct({
    bool? tecStatus,
    String? tecNome,
    String? tecDescricao,
    String? tecLogo,
    int? tecCodigo,
    double? tecValor,
    MaterialStruct? tecMaterial,
  })  : _tecStatus = tecStatus,
        _tecNome = tecNome,
        _tecDescricao = tecDescricao,
        _tecLogo = tecLogo,
        _tecCodigo = tecCodigo,
        _tecValor = tecValor,
        _tecMaterial = tecMaterial;

  // "tec_status" field.
  bool? _tecStatus;
  bool get tecStatus => _tecStatus ?? false;
  set tecStatus(bool? val) => _tecStatus = val;
  bool hasTecStatus() => _tecStatus != null;

  // "tec_nome" field.
  String? _tecNome;
  String get tecNome => _tecNome ?? '';
  set tecNome(String? val) => _tecNome = val;
  bool hasTecNome() => _tecNome != null;

  // "tec_descricao" field.
  String? _tecDescricao;
  String get tecDescricao => _tecDescricao ?? '';
  set tecDescricao(String? val) => _tecDescricao = val;
  bool hasTecDescricao() => _tecDescricao != null;

  // "tec_logo" field.
  String? _tecLogo;
  String get tecLogo => _tecLogo ?? '';
  set tecLogo(String? val) => _tecLogo = val;
  bool hasTecLogo() => _tecLogo != null;

  // "tec_codigo" field.
  int? _tecCodigo;
  int get tecCodigo => _tecCodigo ?? 0;
  set tecCodigo(int? val) => _tecCodigo = val;
  void incrementTecCodigo(int amount) => _tecCodigo = tecCodigo + amount;
  bool hasTecCodigo() => _tecCodigo != null;

  // "tec_valor" field.
  double? _tecValor;
  double get tecValor => _tecValor ?? 0.0;
  set tecValor(double? val) => _tecValor = val;
  void incrementTecValor(double amount) => _tecValor = tecValor + amount;
  bool hasTecValor() => _tecValor != null;

  // "tec_material" field.
  MaterialStruct? _tecMaterial;
  MaterialStruct get tecMaterial => _tecMaterial ?? MaterialStruct();
  set tecMaterial(MaterialStruct? val) => _tecMaterial = val;
  void updateTecMaterial(Function(MaterialStruct) updateFn) =>
      updateFn(_tecMaterial ??= MaterialStruct());
  bool hasTecMaterial() => _tecMaterial != null;

  static TecnologiaStruct fromMap(Map<String, dynamic> data) =>
      TecnologiaStruct(
        tecStatus: data['tec_status'] as bool?,
        tecNome: data['tec_nome'] as String?,
        tecDescricao: data['tec_descricao'] as String?,
        tecLogo: data['tec_logo'] as String?,
        tecCodigo: castToType<int>(data['tec_codigo']),
        tecValor: castToType<double>(data['tec_valor']),
        tecMaterial: MaterialStruct.maybeFromMap(data['tec_material']),
      );

  static TecnologiaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TecnologiaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'tec_status': _tecStatus,
        'tec_nome': _tecNome,
        'tec_descricao': _tecDescricao,
        'tec_logo': _tecLogo,
        'tec_codigo': _tecCodigo,
        'tec_valor': _tecValor,
        'tec_material': _tecMaterial?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tec_status': serializeParam(
          _tecStatus,
          ParamType.bool,
        ),
        'tec_nome': serializeParam(
          _tecNome,
          ParamType.String,
        ),
        'tec_descricao': serializeParam(
          _tecDescricao,
          ParamType.String,
        ),
        'tec_logo': serializeParam(
          _tecLogo,
          ParamType.String,
        ),
        'tec_codigo': serializeParam(
          _tecCodigo,
          ParamType.int,
        ),
        'tec_valor': serializeParam(
          _tecValor,
          ParamType.double,
        ),
        'tec_material': serializeParam(
          _tecMaterial,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TecnologiaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TecnologiaStruct(
        tecStatus: deserializeParam(
          data['tec_status'],
          ParamType.bool,
          false,
        ),
        tecNome: deserializeParam(
          data['tec_nome'],
          ParamType.String,
          false,
        ),
        tecDescricao: deserializeParam(
          data['tec_descricao'],
          ParamType.String,
          false,
        ),
        tecLogo: deserializeParam(
          data['tec_logo'],
          ParamType.String,
          false,
        ),
        tecCodigo: deserializeParam(
          data['tec_codigo'],
          ParamType.int,
          false,
        ),
        tecValor: deserializeParam(
          data['tec_valor'],
          ParamType.double,
          false,
        ),
        tecMaterial: deserializeStructParam(
          data['tec_material'],
          ParamType.DataStruct,
          false,
          structBuilder: MaterialStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TecnologiaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TecnologiaStruct &&
        tecStatus == other.tecStatus &&
        tecNome == other.tecNome &&
        tecDescricao == other.tecDescricao &&
        tecLogo == other.tecLogo &&
        tecCodigo == other.tecCodigo &&
        tecValor == other.tecValor &&
        tecMaterial == other.tecMaterial;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tecStatus,
        tecNome,
        tecDescricao,
        tecLogo,
        tecCodigo,
        tecValor,
        tecMaterial
      ]);
}

TecnologiaStruct createTecnologiaStruct({
  bool? tecStatus,
  String? tecNome,
  String? tecDescricao,
  String? tecLogo,
  int? tecCodigo,
  double? tecValor,
  MaterialStruct? tecMaterial,
}) =>
    TecnologiaStruct(
      tecStatus: tecStatus,
      tecNome: tecNome,
      tecDescricao: tecDescricao,
      tecLogo: tecLogo,
      tecCodigo: tecCodigo,
      tecValor: tecValor,
      tecMaterial: tecMaterial ?? MaterialStruct(),
    );
