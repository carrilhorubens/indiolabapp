import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get usrCodigo => getField<int>('usr_codigo');
  set usrCodigo(int? value) => setField<int>('usr_codigo', value);

  String? get usrNome => getField<String>('usr_nome');
  set usrNome(String? value) => setField<String>('usr_nome', value);

  String? get usrEmail => getField<String>('usr_email');
  set usrEmail(String? value) => setField<String>('usr_email', value);

  String? get usrSenha => getField<String>('usr_senha');
  set usrSenha(String? value) => setField<String>('usr_senha', value);

  bool? get usrLogged => getField<bool>('usr_logged');
  set usrLogged(bool? value) => setField<bool>('usr_logged', value);

  bool? get usrReset => getField<bool>('usr_reset');
  set usrReset(bool? value) => setField<bool>('usr_reset', value);

  String? get usrImagem => getField<String>('usr_imagem');
  set usrImagem(String? value) => setField<String>('usr_imagem', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
