import '../database.dart';

class CategoriaViewTable extends SupabaseTable<CategoriaViewRow> {
  @override
  String get tableName => 'categoria_view';

  @override
  CategoriaViewRow createRow(Map<String, dynamic> data) =>
      CategoriaViewRow(data);
}

class CategoriaViewRow extends SupabaseDataRow {
  CategoriaViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriaViewTable();

  int? get catId => getField<int>('cat_id');
  set catId(int? value) => setField<int>('cat_id', value);

  String? get catNome => getField<String>('cat_nome');
  set catNome(String? value) => setField<String>('cat_nome', value);

  String? get catDescricao => getField<String>('cat_descricao');
  set catDescricao(String? value) => setField<String>('cat_descricao', value);

  int? get catGrupo => getField<int>('cat_grupo');
  set catGrupo(int? value) => setField<int>('cat_grupo', value);

  int? get gruId => getField<int>('gru_id');
  set gruId(int? value) => setField<int>('gru_id', value);

  String? get gruNome => getField<String>('gru_nome');
  set gruNome(String? value) => setField<String>('gru_nome', value);

  String? get gruDescricao => getField<String>('gru_descricao');
  set gruDescricao(String? value) => setField<String>('gru_descricao', value);
}
