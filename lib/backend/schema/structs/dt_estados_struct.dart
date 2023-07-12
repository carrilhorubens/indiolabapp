// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtEstadosStruct extends BaseStruct {
  DtEstadosStruct({
    String? nome,
    String? uf,
  })  : _nome = nome,
        _uf = uf;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;
  bool hasUf() => _uf != null;

  static DtEstadosStruct fromMap(Map<String, dynamic> data) => DtEstadosStruct(
        nome: data['nome'] as String?,
        uf: data['uf'] as String?,
      );

  static DtEstadosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? DtEstadosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'uf': _uf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'uf': serializeParam(
          _uf,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtEstadosStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtEstadosStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        uf: deserializeParam(
          data['uf'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtEstadosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtEstadosStruct && nome == other.nome && uf == other.uf;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, uf]);
}

DtEstadosStruct createDtEstadosStruct({
  String? nome,
  String? uf,
}) =>
    DtEstadosStruct(
      nome: nome,
      uf: uf,
    );
