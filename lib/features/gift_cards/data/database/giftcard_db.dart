import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../../../core/config/constants.dart';
part 'giftcard_db.g.dart';

@Collection(accessor: 'giftcards')
@Name("Giftcard")
class GiftcardDB {
  Id giftcardId = Isar.autoIncrement;
  late String id;
  late String code;
  late int cvv;
  late DateTime dateCreated;
  late DateTime expirationDate;
  late DateTime lastUpdated;
  late String title;
  late String message;
  late int theme;
  late String recipient;
  late String recipientName;
  late String recipientPhoneNumber;
  late int value;
  late String purchaser;
  late String purchaserName;
  late String transaction;
  late String issuer;
  @enumerated
  @Default(GiftcardState.PENDING)
  late GiftcardState status;
}


