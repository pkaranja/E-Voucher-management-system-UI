import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../../core/config/constants.dart';

part 'giftcard_model.freezed.dart';
part 'giftcard_model.g.dart';

@freezed
class GiftcardModel with _$GiftcardModel {
  GiftcardModel._();

  factory GiftcardModel({
    String? id,
    String? code,
    int? cvv,
    DateTime? dateCreated,
    required DateTime expirationDate,
    DateTime? lastUpdated,
    required String title,
    required String message,
    required int theme,
    String? recipient,
    String? recipientName,
    required String recipientPhoneNumber,
    required int value,
    required String purchaser,
    required String purchaserName,
    String? transaction,
    required String issuer,
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
      "theme": theme,
      "recipient": recipient,
      "recipientName": recipientName,
      "recipientPhoneNumber": recipientPhoneNumber,
      "value": value,
      "purchaser": purchaser,
      "purchaserName": purchaserName,
      "transaction": transaction,
      "issuer": issuer,
      "status": status,
    };
  }
}