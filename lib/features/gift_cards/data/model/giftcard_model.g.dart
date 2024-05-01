// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giftcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftcardModelImpl _$$GiftcardModelImplFromJson(Map<String, dynamic> json) =>
    _$GiftcardModelImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      cvv: json['cvv'] as int,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      title: json['title'] as String,
      message: json['message'] as String,
      themeId: json['themeId'] as int,
      recipient: json['recipient'] as String,
      value: json['value'] as int,
      purchaserId: json['purchaserId'] as String,
      transactionId: json['transactionId'] as String,
      issuerId: json['issuerId'] as String,
      status: $enumDecode(_$GiftcardStateEnumMap, json['status']),
    );

Map<String, dynamic> _$$GiftcardModelImplToJson(_$GiftcardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'cvv': instance.cvv,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'expirationDate': instance.expirationDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'title': instance.title,
      'message': instance.message,
      'themeId': instance.themeId,
      'recipient': instance.recipient,
      'value': instance.value,
      'purchaserId': instance.purchaserId,
      'transactionId': instance.transactionId,
      'issuerId': instance.issuerId,
      'status': _$GiftcardStateEnumMap[instance.status]!,
    };

const _$GiftcardStateEnumMap = {
  GiftcardState.PENDING: 'PENDING',
  GiftcardState.ACTIVE: 'ACTIVE',
  GiftcardState.REDEEMED: 'REDEEMED',
  GiftcardState.EXPIRED: 'EXPIRED',
  GiftcardState.CANCELLED: 'CANCELLED',
  GiftcardState.REFUNDED: 'REFUNDED',
};
