import '../database.dart';

class BagikanPostinganTable extends SupabaseTable<BagikanPostinganRow> {
  @override
  String get tableName => 'bagikan_postingan';

  @override
  BagikanPostinganRow createRow(Map<String, dynamic> data) =>
      BagikanPostinganRow(data);
}

class BagikanPostinganRow extends SupabaseDataRow {
  BagikanPostinganRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BagikanPostinganTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idUser => getField<int>('id_user');
  set idUser(int? value) => setField<int>('id_user', value);

  int? get idPostingan => getField<int>('id_postingan');
  set idPostingan(int? value) => setField<int>('id_postingan', value);

  String? get platform => getField<String>('platform');
  set platform(String? value) => setField<String>('platform', value);

  DateTime? get tanggalBagikan => getField<DateTime>('tanggal_bagikan');
  set tanggalBagikan(DateTime? value) =>
      setField<DateTime>('tanggal_bagikan', value);
}
