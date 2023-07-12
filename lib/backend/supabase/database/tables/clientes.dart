import '../database.dart';

class ClientesTable extends SupabaseTable<ClientesRow> {
  @override
  String get tableName => 'clientes';

  @override
  ClientesRow createRow(Map<String, dynamic> data) => ClientesRow(data);
}

class ClientesRow extends SupabaseDataRow {
  ClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientesTable();

  int get cliId => getField<int>('cli_id')!;
  set cliId(int value) => setField<int>('cli_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get cliRazaoSocial => getField<String>('cli_razao_social')!;
  set cliRazaoSocial(String value) =>
      setField<String>('cli_razao_social', value);

  String? get cliCnpj => getField<String>('cli_cnpj');
  set cliCnpj(String? value) => setField<String>('cli_cnpj', value);

  String? get cliEndereco => getField<String>('cli_endereco');
  set cliEndereco(String? value) => setField<String>('cli_endereco', value);

  String? get cliCep => getField<String>('cli_cep');
  set cliCep(String? value) => setField<String>('cli_cep', value);

  String? get cliCidade => getField<String>('cli_cidade');
  set cliCidade(String? value) => setField<String>('cli_cidade', value);

  int? get cliUf => getField<int>('cli_uf');
  set cliUf(int? value) => setField<int>('cli_uf', value);

  String? get cliCaixaPostal => getField<String>('cli_caixa_postal');
  set cliCaixaPostal(String? value) =>
      setField<String>('cli_caixa_postal', value);

  String? get cliIe => getField<String>('cli_ie');
  set cliIe(String? value) => setField<String>('cli_ie', value);

  String? get cliEmail => getField<String>('cli_email');
  set cliEmail(String? value) => setField<String>('cli_email', value);

  String? get cliTelefone => getField<String>('cli_telefone');
  set cliTelefone(String? value) => setField<String>('cli_telefone', value);

  String? get cliCelular => getField<String>('cli_celular');
  set cliCelular(String? value) => setField<String>('cli_celular', value);
}
