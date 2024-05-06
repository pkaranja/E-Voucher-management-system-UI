import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  TransactionModel._();

  factory TransactionModel({
    required String issuerId,
    required String purchaserId,
    required String recipient,
    required String giftcardTheme,
    required String giftcartTitle,
    required String giftCardMessage,
    required int transactionAmount,
    required String transactionPhoneNumber,
    required String provider,
    required String currency,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toRequest() {
    return {
      "issuerId": issuerId,
      "purchaserId": purchaserId,
      "recipient": recipient,
      "giftcardTheme": giftcardTheme,
      "giftcartTitle": giftcartTitle,
      "giftCardMessage": giftCardMessage,
      "transactionAmount": transactionAmount,
      "transactionPhoneNumber": transactionPhoneNumber,
      "provider": provider,
      "currency": currency
    };
  }
}