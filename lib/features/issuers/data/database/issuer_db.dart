import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../core/config/constants.dart';
part 'issuer_db.g.dart';

@Collection(accessor: 'issuers')
@Name("Issuer")
class IssuerDB {
  Id issuerId = Isar.autoIncrement;
  late String id;
  String? name;
  String? email;
  String? phone;
  String? website;
  String? address;
  int? hits;
  String? logo;
  String? facebook;
  String? instagram;
  String? primaryColor;
  String? secondaryColor;
  String? primaryFontColor;
  String? secondaryFontColor;
  String? description;
  String? minAmount;
  String? maxAmount;
  bool? popular;
  bool? featured;
  @enumerated
  @Default(ActiveStatus.INACTIVE)
  late ActiveStatus status;
}


