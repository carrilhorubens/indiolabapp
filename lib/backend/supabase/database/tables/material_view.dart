import '../database.dart';

class MaterialViewTable extends SupabaseTable<MaterialViewRow> {
  @override
  String get tableName => 'material_view';

  @override
  MaterialViewRow createRow(Map<String, dynamic> data) => MaterialViewRow(data);
}

class MaterialViewRow extends SupabaseDataRow {
  MaterialViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaterialViewTable();

  int? get matId => getField<int>('mat_id');
  set matId(int? value) => setField<int>('mat_id', value);

  String? get matNome => getField<String>('mat_nome');
  set matNome(String? value) => setField<String>('mat_nome', value);

  String? get matDescricao => getField<String>('mat_descricao');
  set matDescricao(String? value) => setField<String>('mat_descricao', value);

  int? get matProduto => getField<int>('mat_produto');
  set matProduto(int? value) => setField<int>('mat_produto', value);

  String? get matMarcacao => getField<String>('mat_marcacao');
  set matMarcacao(String? value) => setField<String>('mat_marcacao', value);

  int? get matCodigo => getField<int>('mat_codigo');
  set matCodigo(int? value) => setField<int>('mat_codigo', value);

  double? get matValor => getField<double>('mat_valor');
  set matValor(double? value) => setField<double>('mat_valor', value);

  int? get proId => getField<int>('pro_id');
  set proId(int? value) => setField<int>('pro_id', value);

  String? get proNome => getField<String>('pro_nome');
  set proNome(String? value) => setField<String>('pro_nome', value);

  String? get proDescricao => getField<String>('pro_descricao');
  set proDescricao(String? value) => setField<String>('pro_descricao', value);
}
