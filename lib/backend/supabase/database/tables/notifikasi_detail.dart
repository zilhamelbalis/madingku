import '../database.dart';

class NotifikasiDetailTable extends SupabaseTable<NotifikasiDetailRow> {
  @override
  String get tableName => 'notifikasi_detail';

  @override
  NotifikasiDetailRow createRow(Map<String, dynamic> data) =>
      NotifikasiDetailRow(data);
}

class NotifikasiDetailRow extends SupabaseDataRow {
  NotifikasiDetailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotifikasiDetailTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idUserPenerima => getField<int>('id_user_penerima');
  set idUserPenerima(int? value) => setField<int>('id_user_penerima', value);

  String? get tipe => getField<String>('tipe');
  set tipe(String? value) => setField<String>('tipe', value);

  String? get isiPesan => getField<String>('isi_pesan');
  set isiPesan(String? value) => setField<String>('isi_pesan', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get namaPengirim => getField<String>('nama_pengirim');
  set namaPengirim(String? value) => setField<String>('nama_pengirim', value);

  String? get usernamePengirim => getField<String>('username_pengirim');
  set usernamePengirim(String? value) =>
      setField<String>('username_pengirim', value);

  String? get fotoPengirim => getField<String>('foto_pengirim');
  set fotoPengirim(String? value) => setField<String>('foto_pengirim', value);

  String? get gambarPostingan => getField<String>('gambar_postingan');
  set gambarPostingan(String? value) =>
      setField<String>('gambar_postingan', value);

  String? get kategoriWaktu => getField<String>('kategori_waktu');
  set kategoriWaktu(String? value) => setField<String>('kategori_waktu', value);
}
