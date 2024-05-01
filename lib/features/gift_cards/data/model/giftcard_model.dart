import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/config/constants.dart';
part 'giftcard_model.freezed.dart';
part 'giftcard_model.g.dart';

@freezed
class GiftcardModel with _$GiftcardModel {
  GiftcardModel._();

  factory GiftcardModel({
    required String id,
    required String code,
    required int cvv,
    required DateTime dateCreated,
    required DateTime expirationDate,
    required DateTime lastUpdated,
    required String title,
    required String message,
    required int themeId,
    required String recipient,
    required int value,
    required String purchaserId,
    required String transactionId,
    required String issuerId,
    required GiftcardState status,
  }) = _GiftcardModel;

  factory GiftcardModel.fromJson(Map<String, dynamic> json) =>
      _$GiftcardModelFromJson(json);

  Map<String, dynamic> toRequest() {
    return {
      "id": id,
      "code": code,
      "cvv": cvv,
      "dateCreated": dateCreated,
      "expirationDate": expirationDate,
      "lastUpdated": lastUpdated,
      "title": title,
      "message": message,
      "themeId": themeId,
      "recipient": recipient,
      "value": value,
      "purchaserId": purchaserId,
      "transactionId": transactionId,
      "issuerId": issuerId,
      "status": status,
    };
  }
}