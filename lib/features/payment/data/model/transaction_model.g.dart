// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionModelImpl _$$TransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionModelImpl(
      issuerId: json['issuerId'] as String,
      purchaserId: json['purchaserId'] as String,
      recipient: json['recipient'] as String,
      giftcardTheme: json['giftcardTheme'] as String,
      giftcartTitle: json['giftcartTitle'] as String,
      giftCardMessage: json['giftCardMessage'] as String,
      transactionAmount: json['transactionAmount'] as int,
      transactionPhoneNumber: json['transactionPhoneNumber'] as String,
      provider: json['provider'] as String,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$TransactionModelImplToJson(
        _$TransactionModelImpl instance) =>
    <String, dynamic>{
      'issuerId': instance.issuerId,
      'purchaserId': instance.purchaserId,
      'recipient': instance.recipient,
      'giftcardTheme': instance.giftcardTheme,
      'giftcartTitle': instance.giftcartTitle,
      'giftCardMessage': instance.giftCardMessage,
      'transactionAmount': instance.transactionAmount,
      'transactionPhoneNumber': instance.transactionPhoneNumber,
      'provider': instance.provider,
      'currency': instance.currency,
    };
