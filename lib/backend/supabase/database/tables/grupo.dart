import '../database.dart';

class GrupoTable extends SupabaseTable<GrupoRow> {
  @override
  String get tableName => 'grupo';

  @override
  GrupoRow createRow(Map<String, dynamic> data) => GrupoRow(data);
}

class GrupoRow extends SupabaseDataRow {
  GrupoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GrupoTable();

  int get gruId => getField<int>('gru_id')!;
  set gruId(int value) => setField<int>('gru_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get gruStatus => getField<bool>('gru_status');
  set gruStatus(bool? value) => setField<bool>('gru_status', value);

  String? get gruNome => getField<String>('gru_nome');
  set gruNome(String? value) => setField<String>('gru_nome', value);

  String? get gruDescricao => getField<String>('gru_descricao');
  set gruDescricao(String? value) => setField<String>('gru_descricao', value);

  int? get gruUsuario => getField<int>('gru_usuario');
  set gruUsuario(int? value) => setField<int>('gru_usuario', value);

  int? get gruOrdem => getField<int>('gru_ordem');
  set gruOrdem(int? value) => setField<int>('gru_ordem', value);
}
