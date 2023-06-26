// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialStruct extends BaseStruct {
  MaterialStruct({
    bool? matStatus,
    String? matNome,
    String? matDescricao,
    String? matMarcacao,
    int? matCodigo,
    double? matValor,
    ProdutoStruct? matProduto,
  })  : _matStatus = matStatus,
        _matNome = matNome,
        _matDescricao = matDescricao,
        _matMarcacao = matMarcacao,
        _matCodigo = matCodigo,
        _matValor = matValor,
        _matProduto = matProduto;

  // "mat_status" field.
  bool? _matStatus;
  bool get matStatus => _matStatus ?? false;
  set matStatus(bool? val) => _matStatus = val;
  bool hasMatStatus() => _matStatus != null;

  // "mat_nome" field.
  String? _matNome;
  String get matNome => _matNome ?? '';
  set matNome(String? val) => _matNome = val;
  bool hasMatNome() => _matNome != null;

  // "mat_descricao" field.
  String? _matDescricao;
  String get matDescricao => _matDescricao ?? '';
  set matDescricao(String? val) => _matDescricao = val;
  bool hasMatDescricao() => _matDescricao != null;

  // "mat_marcacao" field.
  String? _matMarcacao;
  String get matMarcacao => _matMarcacao ?? '';
  set matMarcacao(String? val) => _matMarcacao = val;
  bool hasMatMarcacao() => _matMarcacao != null;

  // "mat_codigo" field.
  int? _matCodigo;
  int get matCodigo => _matCodigo ?? 0;
  set matCodigo(int? val) => _matCodigo = val;
  void incrementMatCodigo(int amount) => _matCodigo = matCodigo + amount;
  bool hasMatCodigo() => _matCodigo != null;

  // "mat_valor" field.
  double? _matValor;
  double get matValor => _matValor ?? 0.0;
  set matValor(double? val) => _matValor = val;
  void incrementMatValor(double amount) => _matValor = matValor + amount;
  bool hasMatValor() => _matValor != null;

  // "mat_produto" field.
  ProdutoStruct? _matProduto;
  ProdutoStruct get matProduto => _matProduto ?? ProdutoStruct();
  set matProduto(ProdutoStruct? val) => _matProduto = val;
  void updateMatProduto(Function(ProdutoStruct) updateFn) =>
      updateFn(_matProduto ??= ProdutoStruct());
  bool hasMatProduto() => _matProduto != null;

  static MaterialStruct fromMap(Map<String, dynamic> data) => MaterialStruct(
        matStatus: data['mat_status'] as bool?,
        matNome: data['mat_nome'] as String?,
        matDescricao: data['mat_descricao'] as String?,
        matMarcacao: data['mat_marcacao'] as String?,
        matCodigo: castToType<int>(data['mat_codigo']),
        matValor: castToType<double>(data['mat_valor']),
        matProduto: ProdutoStruct.maybeFromMap(data['mat_produto']),
      );

  static MaterialStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MaterialStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'mat_status': _matStatus,
        'mat_nome': _matNome,
        'mat_descricao': _matDescricao,
        'mat_marcacao': _matMarcacao,
        'mat_codigo': _matCodigo,
        'mat_valor': _matValor,
        'mat_produto': _matProduto?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mat_status': serializeParam(
          _matStatus,
          ParamType.bool,
        ),
        'mat_nome': serializeParam(
          _matNome,
          ParamType.String,
        ),
        'mat_descricao': serializeParam(
          _matDescricao,
          ParamType.String,
        ),
        'mat_marcacao': serializeParam(
          _matMarcacao,
          ParamType.String,
        ),
        'mat_codigo': serializeParam(
          _matCodigo,
          ParamType.int,
        ),
        'mat_valor': serializeParam(
          _matValor,
          ParamType.double,
        ),
        'mat_produto': serializeParam(
          _matProduto,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaterialStruct(
        matStatus: deserializeParam(
          data['mat_status'],
          ParamType.bool,
          false,
        ),
        matNome: deserializeParam(
          data['mat_nome'],
          ParamType.String,
          false,
        ),
        matDescricao: deserializeParam(
          data['mat_descricao'],
          ParamType.String,
          false,
        ),
        matMarcacao: deserializeParam(
          data['mat_marcacao'],
          ParamType.String,
          false,
        ),
        matCodigo: deserializeParam(
          data['mat_codigo'],
          ParamType.int,
          false,
        ),
        matValor: deserializeParam(
          data['mat_valor'],
          ParamType.double,
          false,
        ),
        matProduto: deserializeStructParam(
          data['mat_produto'],
          ParamType.DataStruct,
          false,
          structBuilder: ProdutoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MaterialStruct &&
        matStatus == other.matStatus &&
        matNome == other.matNome &&
        matDescricao == other.matDescricao &&
        matMarcacao == other.matMarcacao &&
        matCodigo == other.matCodigo &&
        matValor == other.matValor &&
        matProduto == other.matProduto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        matStatus,
        matNome,
        matDescricao,
        matMarcacao,
        matCodigo,
        matValor,
        matProduto
      ]);
}

MaterialStruct createMaterialStruct({
  bool? matStatus,
  String? matNome,
  String? matDescricao,
  String? matMarcacao,
  int? matCodigo,
  double? matValor,
  ProdutoStruct? matProduto,
}) =>
    MaterialStruct(
      matStatus: matStatus,
      matNome: matNome,
      matDescricao: matDescricao,
      matMarcacao: matMarcacao,
      matCodigo: matCodigo,
      matValor: matValor,
      matProduto: matProduto ?? ProdutoStruct(),
    );
