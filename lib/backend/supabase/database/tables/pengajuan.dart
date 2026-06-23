import '../database.dart';

class PengajuanTable extends SupabaseTable<PengajuanRow> {
  @override
  String get tableName => 'pengajuan';

  @override
  PengajuanRow createRow(Map<String, dynamic> data) => PengajuanRow(data);
}

class PengajuanRow extends SupabaseDataRow {
  PengajuanRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PengajuanTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUser => getField<int>('id_user');
  set idUser(int? value) => setField<int>('id_user', value);

  int? get idKategori => getField<int>('id_kategori');
  set idKategori(int? value) => setField<int>('id_kategori', value);

  String get judul => getField<String>('judul')!;
  set judul(String value) => setField<String>('judul', value);

  String? get deskripsi => getField<String>('deskripsi');
  set deskripsi(String? value) => setField<String>('deskripsi', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get tanggalPengajuan => getField<DateTime>('tanggal_pengajuan');
  set tanggalPengajuan(DateTime? value) =>
      setField<DateTime>('tanggal_pengajuan', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);
}
