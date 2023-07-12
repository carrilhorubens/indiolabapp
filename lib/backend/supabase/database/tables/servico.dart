import '../database.dart';

class ServicoTable extends SupabaseTable<ServicoRow> {
  @override
  String get tableName => 'servico';

  @override
  ServicoRow createRow(Map<String, dynamic> data) => ServicoRow(data);
}

class ServicoRow extends SupabaseDataRow {
  ServicoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServicoTable();

  int get serId => getField<int>('ser_id')!;
  set serId(int value) => setField<int>('ser_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get serStatus => getField<bool>('ser_status');
  set serStatus(bool? value) => setField<bool>('ser_status', value);

  int? get serCodigo => getField<int>('ser_codigo');
  set serCodigo(int? value) => setField<int>('ser_codigo', value);

  String? get serNome => getField<String>('ser_nome');
  set serNome(String? value) => setField<String>('ser_nome', value);

  String? get serDescricao => getField<String>('ser_descricao');
  set serDescricao(String? value) => setField<String>('ser_descricao', value);

  int? get serCategoria => getField<int>('ser_categoria');
  set serCategoria(int? value) => setField<int>('ser_categoria', value);

  int? get serUsuario => getField<int>('ser_usuario');
  set serUsuario(int? value) => setField<int>('ser_usuario', value);

  double? get serValor => getField<double>('ser_valor');
  set serValor(double? value) => setField<double>('ser_valor', value);
}
