import '../database.dart';

class KomenTable extends SupabaseTable<KomenRow> {
  @override
  String get tableName => 'komen';

  @override
  KomenRow createRow(Map<String, dynamic> data) => KomenRow(data);
}

class KomenRow extends SupabaseDataRow {
  KomenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => KomenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUser => getField<int>('id_user');
  set idUser(int? value) => setField<int>('id_user', value);

  int? get idPostingan => getField<int>('id_postingan');
  set idPostingan(int? value) => setField<int>('id_postingan', value);

  String get isi => getField<String>('isi')!;
  set isi(String value) => setField<String>('isi', value);

  DateTime? get tanggalKomen => getField<DateTime>('tanggal_komen');
  set tanggalKomen(DateTime? value) =>
      setField<DateTime>('tanggal_komen', value);
}
