import '../database.dart';

class TecnologiaTable extends SupabaseTable<TecnologiaRow> {
  @override
  String get tableName => 'tecnologia';

  @override
  TecnologiaRow createRow(Map<String, dynamic> data) => TecnologiaRow(data);
}

class TecnologiaRow extends SupabaseDataRow {
  TecnologiaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TecnologiaTable();

  int get tecId => getField<int>('tec_id')!;
  set tecId(int value) => setField<int>('tec_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get tecUsuario => getField<int>('tec_usuario');
  set tecUsuario(int? value) => setField<int>('tec_usuario', value);

  int? get tecMaterial => getField<int>('tec_material');
  set tecMaterial(int? value) => setField<int>('tec_material', value);

  int? get tecCodigo => getField<int>('tec_codigo');
  set tecCodigo(int? value) => setField<int>('tec_codigo', value);

  String? get tecNome => getField<String>('tec_nome');
  set tecNome(String? value) => setField<String>('tec_nome', value);

  String? get tecDescricao => getField<String>('tec_descricao');
  set tecDescricao(String? value) => setField<String>('tec_descricao', value);

  double? get tecValor => getField<double>('tec_valor');
  set tecValor(double? value) => setField<double>('tec_valor', value);
}
