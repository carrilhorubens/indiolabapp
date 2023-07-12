import '../database.dart';

class EstadosTable extends SupabaseTable<EstadosRow> {
  @override
  String get tableName => 'estados';

  @override
  EstadosRow createRow(Map<String, dynamic> data) => EstadosRow(data);
}

class EstadosRow extends SupabaseDataRow {
  EstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadosTable();

  int get estId => getField<int>('est_id')!;
  set estId(int value) => setField<int>('est_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get estNome => getField<String>('est_nome');
  set estNome(String? value) => setField<String>('est_nome', value);

  String? get estUf => getField<String>('est_uf');
  set estUf(String? value) => setField<String>('est_uf', value);
}
