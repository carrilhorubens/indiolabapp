import '../database.dart';

class ProdutoTable extends SupabaseTable<ProdutoRow> {
  @override
  String get tableName => 'produto';

  @override
  ProdutoRow createRow(Map<String, dynamic> data) => ProdutoRow(data);
}

class ProdutoRow extends SupabaseDataRow {
  ProdutoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutoTable();

  int get proId => getField<int>('pro_id')!;
  set proId(int value) => setField<int>('pro_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get proStatus => getField<bool>('pro_status');
  set proStatus(bool? value) => setField<bool>('pro_status', value);

  String? get proNome => getField<String>('pro_nome');
  set proNome(String? value) => setField<String>('pro_nome', value);

  String? get proDescricao => getField<String>('pro_descricao');
  set proDescricao(String? value) => setField<String>('pro_descricao', value);

  String? get proLogo => getField<String>('pro_logo');
  set proLogo(String? value) => setField<String>('pro_logo', value);

  int? get proCategoria => getField<int>('pro_categoria');
  set proCategoria(int? value) => setField<int>('pro_categoria', value);

  int? get proUsuario => getField<int>('pro_usuario');
  set proUsuario(int? value) => setField<int>('pro_usuario', value);
}
