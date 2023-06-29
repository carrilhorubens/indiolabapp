import '../database.dart';

class TecnologiaViewTable extends SupabaseTable<TecnologiaViewRow> {
  @override
  String get tableName => 'tecnologia_view';

  @override
  TecnologiaViewRow createRow(Map<String, dynamic> data) =>
      TecnologiaViewRow(data);
}

class TecnologiaViewRow extends SupabaseDataRow {
  TecnologiaViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TecnologiaViewTable();

  int? get tecId => getField<int>('tec_id');
  set tecId(int? value) => setField<int>('tec_id', value);

  String? get tecNome => getField<String>('tec_nome');
  set tecNome(String? value) => setField<String>('tec_nome', value);

  String? get tecDescricao => getField<String>('tec_descricao');
  set tecDescricao(String? value) => setField<String>('tec_descricao', value);

  int? get tecMaterial => getField<int>('tec_material');
  set tecMaterial(int? value) => setField<int>('tec_material', value);

  String? get tecLogo => getField<String>('tec_logo');
  set tecLogo(String? value) => setField<String>('tec_logo', value);

  int? get tecCodigo => getField<int>('tec_codigo');
  set tecCodigo(int? value) => setField<int>('tec_codigo', value);

  double? get tecValor => getField<double>('tec_valor');
  set tecValor(double? value) => setField<double>('tec_valor', value);

  int? get matId => getField<int>('mat_id');
  set matId(int? value) => setField<int>('mat_id', value);

  int? get matCodigo => getField<int>('mat_codigo');
  set matCodigo(int? value) => setField<int>('mat_codigo', value);

  String? get matNome => getField<String>('mat_nome');
  set matNome(String? value) => setField<String>('mat_nome', value);

  String? get matDescricao => getField<String>('mat_descricao');
  set matDescricao(String? value) => setField<String>('mat_descricao', value);

  double? get matValor => getField<double>('mat_valor');
  set matValor(double? value) => setField<double>('mat_valor', value);
}
