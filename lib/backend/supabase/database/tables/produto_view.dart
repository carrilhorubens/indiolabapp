import '../database.dart';

class ProdutoViewTable extends SupabaseTable<ProdutoViewRow> {
  @override
  String get tableName => 'produto_view';

  @override
  ProdutoViewRow createRow(Map<String, dynamic> data) => ProdutoViewRow(data);
}

class ProdutoViewRow extends SupabaseDataRow {
  ProdutoViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutoViewTable();

  int? get proId => getField<int>('pro_id');
  set proId(int? value) => setField<int>('pro_id', value);

  String? get proNome => getField<String>('pro_nome');
  set proNome(String? value) => setField<String>('pro_nome', value);

  String? get proDescricao => getField<String>('pro_descricao');
  set proDescricao(String? value) => setField<String>('pro_descricao', value);

  String? get proLogo => getField<String>('pro_logo');
  set proLogo(String? value) => setField<String>('pro_logo', value);

  int? get proCategoria => getField<int>('pro_categoria');
  set proCategoria(int? value) => setField<int>('pro_categoria', value);

  int? get catId => getField<int>('cat_id');
  set catId(int? value) => setField<int>('cat_id', value);

  String? get catNome => getField<String>('cat_nome');
  set catNome(String? value) => setField<String>('cat_nome', value);

  String? get catDescricao => getField<String>('cat_descricao');
  set catDescricao(String? value) => setField<String>('cat_descricao', value);
}
