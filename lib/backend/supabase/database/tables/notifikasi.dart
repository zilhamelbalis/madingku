import '../database.dart';

class NotifikasiTable extends SupabaseTable<NotifikasiRow> {
  @override
  String get tableName => 'notifikasi';

  @override
  NotifikasiRow createRow(Map<String, dynamic> data) => NotifikasiRow(data);
}

class NotifikasiRow extends SupabaseDataRow {
  NotifikasiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotifikasiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUserPenerima => getField<int>('id_user_penerima');
  set idUserPenerima(int? value) => setField<int>('id_user_penerima', value);

  int? get idUserPengirim => getField<int>('id_user_pengirim');
  set idUserPengirim(int? value) => setField<int>('id_user_pengirim', value);

  int? get idPostingan => getField<int>('id_postingan');
  set idPostingan(int? value) => setField<int>('id_postingan', value);

  String? get tipe => getField<String>('tipe');
  set tipe(String? value) => setField<String>('tipe', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get isiPesan => getField<String>('isi_pesan');
  set isiPesan(String? value) => setField<String>('isi_pesan', value);
}
