import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nama => getField<String>('nama')!;
  set nama(String value) => setField<String>('nama', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  int? get idJurusan => getField<int>('id_jurusan');
  set idJurusan(int? value) => setField<int>('id_jurusan', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get profileImg => getField<String>('profile_img');
  set profileImg(String? value) => setField<String>('profile_img', value);

  String? get coverImg => getField<String>('cover_img');
  set coverImg(String? value) => setField<String>('cover_img', value);
}
