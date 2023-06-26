// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GrupoStruct extends BaseStruct {
  GrupoStruct({
    int? gruRef,
    bool? gruStatus,
    String? gruNome,
    String? gruDescricao,
  })  : _gruRef = gruRef,
        _gruStatus = gruStatus,
        _gruNome = gruNome,
        _gruDescricao = gruDescricao;

  // "gru_ref" field.
  int? _gruRef;
  int get gruRef => _gruRef ?? 0;
  set gruRef(int? val) => _gruRef = val;
  void incrementGruRef(int amount) => _gruRef = gruRef + amount;
  bool hasGruRef() => _gruRef != null;

  // "gru_status" field.
  bool? _gruStatus;
  bool get gruStatus => _gruStatus ?? false;
  set gruStatus(bool? val) => _gruStatus = val;
  bool hasGruStatus() => _gruStatus != null;

  // "gru_nome" field.
  String? _gruNome;
  String get gruNome => _gruNome ?? '';
  set gruNome(String? val) => _gruNome = val;
  bool hasGruNome() => _gruNome != null;

  // "gru_descricao" field.
  String? _gruDescricao;
  String get gruDescricao => _gruDescricao ?? '';
  set gruDescricao(String? val) => _gruDescricao = val;
  bool hasGruDescricao() => _gruDescricao != null;

  static GrupoStruct fromMap(Map<String, dynamic> data) => GrupoStruct(
        gruRef: castToType<int>(data['gru_ref']),
        gruStatus: data['gru_status'] as bool?,
        gruNome: data['gru_nome'] as String?,
        gruDescricao: data['gru_descricao'] as String?,
      );

  static GrupoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? GrupoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'gru_ref': _gruRef,
        'gru_status': _gruStatus,
        'gru_nome': _gruNome,
        'gru_descricao': _gruDescricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gru_ref': serializeParam(
          _gruRef,
          ParamType.int,
        ),
        'gru_status': serializeParam(
          _gruStatus,
          ParamType.bool,
        ),
        'gru_nome': serializeParam(
          _gruNome,
          ParamType.String,
        ),
        'gru_descricao': serializeParam(
          _gruDescricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static GrupoStruct fromSerializableMap(Map<String, dynamic> data) =>
      GrupoStruct(
        gruRef: deserializeParam(
          data['gru_ref'],
          ParamType.int,
          false,
        ),
        gruStatus: deserializeParam(
          data['gru_status'],
          ParamType.bool,
          false,
        ),
        gruNome: deserializeParam(
          data['gru_nome'],
          ParamType.String,
          false,
        ),
        gruDescricao: deserializeParam(
          data['gru_descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GrupoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GrupoStruct &&
        gruRef == other.gruRef &&
        gruStatus == other.gruStatus &&
        gruNome == other.gruNome &&
        gruDescricao == other.gruDescricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([gruRef, gruStatus, gruNome, gruDescricao]);
}

GrupoStruct createGrupoStruct({
  int? gruRef,
  bool? gruStatus,
  String? gruNome,
  String? gruDescricao,
}) =>
    GrupoStruct(
      gruRef: gruRef,
      gruStatus: gruStatus,
      gruNome: gruNome,
      gruDescricao: gruDescricao,
    );
