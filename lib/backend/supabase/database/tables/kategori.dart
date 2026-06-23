import '../database.dart';

class KategoriTable extends SupabaseTable<KategoriRow> {
  @override
  String get tableName => 'kategori';

  @override
  KategoriRow createRow(Map<String, dynamic> data) => KategoriRow(data);
}

class KategoriRow extends SupabaseDataRow {
  KategoriRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => KategoriTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get namaKategori => getField<String>('nama_kategori')!;
  set namaKategori(String value) => setField<String>('nama_kategori', value);
}
