import 'package:isar/isar.dart';
part 'category_db.g.dart';

@Collection(accessor: 'categories')
@Name("Category")
class CategoryDB {
  Id id = Isar.autoIncrement;
  String? name;
  String? icon;
  String? status;
  String? backgroundColor;
  int? order;
}


