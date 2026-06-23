import '../database.dart';

class PostinganTable extends SupabaseTable<PostinganRow> {
  @override
  String get tableName => 'postingan';

  @override
  PostinganRow createRow(Map<String, dynamic> data) => PostinganRow(data);
}

class PostinganRow extends SupabaseDataRow {
  PostinganRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostinganTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idAdmin => getField<int>('id_admin');
  set idAdmin(int? value) => setField<int>('id_admin', value);

  int? get idKategori => getField<int>('id_kategori');
  set idKategori(int? value) => setField<int>('id_kategori', value);

  String? get gambar => getField<String>('gambar');
  set gambar(String? value) => setField<String>('gambar', value);

  String get judul => getField<String>('judul')!;
  set judul(String value) => setField<String>('judul', value);

  String? get isi => getField<String>('isi');
  set isi(String? value) => setField<String>('isi', value);

  DateTime? get tanggalDibuat => getField<DateTime>('tanggal_dibuat');
  set tanggalDibuat(DateTime? value) =>
      setField<DateTime>('tanggal_dibuat', value);
}
