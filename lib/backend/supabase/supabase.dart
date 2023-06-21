import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://sdafnfwktvyrdnqekxxx.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNkYWZuZndrdHZ5cmRucWVreHh4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODcxMTk3MTAsImV4cCI6MjAwMjY5NTcxMH0.FH4UipKvAPaSNRHoCFlX9VxQrMYeTxlitkelia7BBNg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
