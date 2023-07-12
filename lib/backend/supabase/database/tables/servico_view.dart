import '../database.dart';

class ServicoViewTable extends SupabaseTable<ServicoViewRow> {
  @override
  String get tableName => 'servico_view';

  @override
  ServicoViewRow createRow(Map<String, dynamic> data) => ServicoViewRow(data);
}

class ServicoViewRow extends SupabaseDataRow {
  ServicoViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicoViewTable();

  int? get serId => getField<int>('ser_id');
  set serId(int? value) => setField<int>('ser_id', value);

  int? get serCodigo => getField<int>('ser_codigo');
  set serCodigo(int? value) => setField<int>('ser_codigo', value);

  String? get serNome => getField<String>('ser_nome');
  set serNome(String? value) => setField<String>('ser_nome', value);

  String? get serDescricao => getField<String>('ser_descricao');
  set serDescricao(String? value) => setField<String>('ser_descricao', value);

  double? get serValor => getField<double>('ser_valor');
  set serValor(double? value) => setField<double>('ser_valor', value);

  int? get serCategoria => getField<int>('ser_categoria');
  set serCategoria(int? value) => setField<int>('ser_categoria', value);

  int? get catId => getField<int>('cat_id');
  set catId(int? value) => setField<int>('cat_id', value);

  String? get catNome => getField<String>('cat_nome');
  set catNome(String? value) => setField<String>('cat_nome', value);

  String? get catDescricao => getField<String>('cat_descricao');
  set catDescricao(String? value) => setField<String>('cat_descricao', value);
}
