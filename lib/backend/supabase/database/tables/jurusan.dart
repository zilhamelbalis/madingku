import '../database.dart';

class JurusanTable extends SupabaseTable<JurusanRow> {
  @override
  String get tableName => 'jurusan';

  @override
  JurusanRow createRow(Map<String, dynamic> data) => JurusanRow(data);
}

class JurusanRow extends SupabaseDataRow {
  JurusanRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JurusanTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get namaJurusan => getField<String>('nama_jurusan')!;
  set namaJurusan(String value) => setField<String>('nama_jurusan', value);
}
