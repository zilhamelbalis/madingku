import '../database.dart';

class SimpanPostinganTable extends SupabaseTable<SimpanPostinganRow> {
  @override
  String get tableName => 'simpan_postingan';

  @override
  SimpanPostinganRow createRow(Map<String, dynamic> data) =>
      SimpanPostinganRow(data);
}

class SimpanPostinganRow extends SupabaseDataRow {
  SimpanPostinganRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SimpanPostinganTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUser => getField<int>('id_user');
  set idUser(int? value) => setField<int>('id_user', value);

  int? get idPostingan => getField<int>('id_postingan');
  set idPostingan(int? value) => setField<int>('id_postingan', value);

  DateTime? get tanggalSimpan => getField<DateTime>('tanggal_simpan');
  set tanggalSimpan(DateTime? value) =>
      setField<DateTime>('tanggal_simpan', value);
}
