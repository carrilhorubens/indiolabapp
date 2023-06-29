import '../database.dart';

class MaterialTable extends SupabaseTable<MaterialRow> {
  @override
  String get tableName => 'material';

  @override
  MaterialRow createRow(Map<String, dynamic> data) => MaterialRow(data);
}

class MaterialRow extends SupabaseDataRow {
  MaterialRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MaterialTable();

  int get matId => getField<int>('mat_id')!;
  set matId(int value) => setField<int>('mat_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get matStatus => getField<bool>('mat_status');
  set matStatus(bool? value) => setField<bool>('mat_status', value);

  String? get matNome => getField<String>('mat_nome');
  set matNome(String? value) => setField<String>('mat_nome', value);

  String? get matDescricao => getField<String>('mat_descricao');
  set matDescricao(String? value) => setField<String>('mat_descricao', value);

  String? get matMarcacao => getField<String>('mat_marcacao');
  set matMarcacao(String? value) => setField<String>('mat_marcacao', value);

  int? get matCodigo => getField<int>('mat_codigo');
  set matCodigo(int? value) => setField<int>('mat_codigo', value);

  double? get matValor => getField<double>('mat_valor');
  set matValor(double? value) => setField<double>('mat_valor', value);

  int? get matProduto => getField<int>('mat_produto');
  set matProduto(int? value) => setField<int>('mat_produto', value);

  int? get matUsuario => getField<int>('mat_usuario');
  set matUsuario(int? value) => setField<int>('mat_usuario', value);
}
