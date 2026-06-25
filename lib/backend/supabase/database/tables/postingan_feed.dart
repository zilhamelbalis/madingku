import '../database.dart';

class PostinganFeedTable extends SupabaseTable<PostinganFeedRow> {
  @override
  String get tableName => 'postingan_feed';

  @override
  PostinganFeedRow createRow(Map<String, dynamic> data) =>
      PostinganFeedRow(data);
}

class PostinganFeedRow extends SupabaseDataRow {
  PostinganFeedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostinganFeedTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idKategori => getField<int>('id_kategori');
  set idKategori(int? value) => setField<int>('id_kategori', value);

  String? get gambar => getField<String>('gambar');
  set gambar(String? value) => setField<String>('gambar', value);

  String? get judul => getField<String>('judul');
  set judul(String? value) => setField<String>('judul', value);

  String? get isi => getField<String>('isi');
  set isi(String? value) => setField<String>('isi', value);

  DateTime? get tanggalDibuat => getField<DateTime>('tanggal_dibuat');
  set tanggalDibuat(DateTime? value) =>
      setField<DateTime>('tanggal_dibuat', value);

  int? get idUsers => getField<int>('id_users');
  set idUsers(int? value) => setField<int>('id_users', value);

  String? get namaPembuat => getField<String>('nama_pembuat');
  set namaPembuat(String? value) => setField<String>('nama_pembuat', value);

  String? get usernamePembuat => getField<String>('username_pembuat');
  set usernamePembuat(String? value) =>
      setField<String>('username_pembuat', value);

  String? get profilPembuat => getField<String>('profil_pembuat');
  set profilPembuat(String? value) => setField<String>('profil_pembuat', value);

  List<int> get daftarLiker => getListField<int>('daftar_liker');
  set daftarLiker(List<int>? value) => setListField<int>('daftar_liker', value);

  List<int> get daftarSaver => getListField<int>('daftar_saver');
  set daftarSaver(List<int>? value) => setListField<int>('daftar_saver', value);
}
