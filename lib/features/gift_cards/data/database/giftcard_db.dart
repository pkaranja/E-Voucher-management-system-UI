import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../core/config/constants.dart';
part 'giftcard_db.g.dart';

@Collection(accessor: 'giftcards')
@Name("Giftcard")
class GiftcardDB {
  Id giftcardId = Isar.autoIncrement;
  late String id;
  String? code;
  int? cvv;
  late DateTime dateCreated;
  late DateTime expirationDate;
  late DateTime lastUpdated;
  late String title;
  late String message;
  late int themeId;
  String? recipient;
  late int value;
  late String purchaserId;
  String? transactionId;
  late String issuerId;
  @enumerated
  @Default(GiftcardState.PENDING)
  late GiftcardState status;
}


