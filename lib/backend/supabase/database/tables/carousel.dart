import '../database.dart';

class CarouselTable extends SupabaseTable<CarouselRow> {
  @override
  String get tableName => 'carousel';

  @override
  CarouselRow createRow(Map<String, dynamic> data) => CarouselRow(data);
}

class CarouselRow extends SupabaseDataRow {
  CarouselRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CarouselTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get carImages => getField<String>('car_images');
  set carImages(String? value) => setField<String>('car_images', value);

  bool? get carStatus => getField<bool>('car_status');
  set carStatus(bool? value) => setField<bool>('car_status', value);
}
