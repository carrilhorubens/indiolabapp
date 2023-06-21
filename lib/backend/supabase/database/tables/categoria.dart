import '../database.dart';

class CategoriaTable extends SupabaseTable<CategoriaRow> {
  @override
  String get tableName => 'categoria';

  @override
  CategoriaRow createRow(Map<String, dynamic> data) => CategoriaRow(data);
}

class CategoriaRow extends SupabaseDataRow {
  CategoriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get catGrupo => getField<int>('cat_grupo');
  set catGrupo(int? value) => setField<int>('cat_grupo', value);

  bool? get catStatus => getField<bool>('cat_status');
  set catStatus(bool? value) => setField<bool>('cat_status', value);

  String? get catNome => getField<String>('cat_nome');
  set catNome(String? value) => setField<String>('cat_nome', value);

  String? get catDescricao => getField<String>('cat_descricao');
  set catDescricao(String? value) => setField<String>('cat_descricao', value);

  int? get catUsuario => getField<int>('cat_usuario');
  set catUsuario(int? value) => setField<int>('cat_usuario', value);
}
