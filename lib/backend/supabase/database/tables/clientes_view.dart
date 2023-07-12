import '../database.dart';

class ClientesViewTable extends SupabaseTable<ClientesViewRow> {
  @override
  String get tableName => 'clientes_view';

  @override
  ClientesViewRow createRow(Map<String, dynamic> data) => ClientesViewRow(data);
}

class ClientesViewRow extends SupabaseDataRow {
  ClientesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientesViewTable();

  int? get cliId => getField<int>('cli_id');
  set cliId(int? value) => setField<int>('cli_id', value);

  String? get cliCnpj => getField<String>('cli_cnpj');
  set cliCnpj(String? value) => setField<String>('cli_cnpj', value);

  String? get cliIe => getField<String>('cli_ie');
  set cliIe(String? value) => setField<String>('cli_ie', value);

  String? get cliRazaoSocial => getField<String>('cli_razao_social');
  set cliRazaoSocial(String? value) =>
      setField<String>('cli_razao_social', value);

  String? get cliEndereco => getField<String>('cli_endereco');
  set cliEndereco(String? value) => setField<String>('cli_endereco', value);

  String? get cliCep => getField<String>('cli_cep');
  set cliCep(String? value) => setField<String>('cli_cep', value);

  String? get cliCaixaPostal => getField<String>('cli_caixa_postal');
  set cliCaixaPostal(String? value) =>
      setField<String>('cli_caixa_postal', value);

  String? get cliCidade => getField<String>('cli_cidade');
  set cliCidade(String? value) => setField<String>('cli_cidade', value);

  int? get cliUf => getField<int>('cli_uf');
  set cliUf(int? value) => setField<int>('cli_uf', value);

  String? get cliEmail => getField<String>('cli_email');
  set cliEmail(String? value) => setField<String>('cli_email', value);

  String? get cliTelefone => getField<String>('cli_telefone');
  set cliTelefone(String? value) => setField<String>('cli_telefone', value);

  String? get cliCelular => getField<String>('cli_celular');
  set cliCelular(String? value) => setField<String>('cli_celular', value);

  int? get estId => getField<int>('est_id');
  set estId(int? value) => setField<int>('est_id', value);

  String? get estNome => getField<String>('est_nome');
  set estNome(String? value) => setField<String>('est_nome', value);

  String? get estUf => getField<String>('est_uf');
  set estUf(String? value) => setField<String>('est_uf', value);
}
