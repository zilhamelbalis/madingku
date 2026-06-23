import '../database.dart';

class AdminTable extends SupabaseTable<AdminRow> {
  @override
  String get tableName => 'admin';

  @override
  AdminRow createRow(Map<String, dynamic> data) => AdminRow(data);
}

class AdminRow extends SupabaseDataRow {
  AdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nama => getField<String>('nama')!;
  set nama(String value) => setField<String>('nama', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);
}
