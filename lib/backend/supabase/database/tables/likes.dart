import '../database.dart';

class LikesTable extends SupabaseTable<LikesRow> {
  @override
  String get tableName => 'likes';

  @override
  LikesRow createRow(Map<String, dynamic> data) => LikesRow(data);
}

class LikesRow extends SupabaseDataRow {
  LikesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LikesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUser => getField<int>('id_user');
  set idUser(int? value) => setField<int>('id_user', value);

  int? get idPostingan => getField<int>('id_postingan');
  set idPostingan(int? value) => setField<int>('id_postingan', value);

  DateTime? get tanggalLike => getField<DateTime>('tanggal_like');
  set tanggalLike(DateTime? value) => setField<DateTime>('tanggal_like', value);
}
