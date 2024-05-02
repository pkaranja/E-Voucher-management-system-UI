// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giftcard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftcardModelImpl _$$GiftcardModelImplFromJson(Map<String, dynamic> json) =>
    _$GiftcardModelImpl(
      id: json['id'] as String?,
      code: json['code'] as String?,
      cvv: json['cvv'] as int?,
      dateCreated: json['dateCreated'] == null
          ? null
          : DateTime.parse(json['dateCreated'] as String),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      title: json['title'] as String,
      message: json['message'] as String,
      theme: json['theme'] as int,
      recipient: json['recipient'] as String?,
      recipientName: json['recipientName'] as String?,
      recipientPhoneNumber: json['recipientPhoneNumber'] as String,
      value: json['value'] as int,
      purchaser: json['purchaser'] as String,
      purchaserName: json['purchaserName'] as String,
      transaction: json['transaction'] as String?,
      issuer: json['issuer'] as String,
      status: $enumDecode(_$GiftcardStateEnumMap, json['status']),
    );

Map<String, dynamic> _$$GiftcardModelImplToJson(_$GiftcardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'cvv': instance.cvv,
      'dateCreated': instance.dateCreated?.toIso8601String(),
      'expirationDate': instance.expirationDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'title': instance.title,
      'message': instance.message,
      'theme': instance.theme,
      'recipient': instance.recipient,
      'recipientName': instance.recipientName,
      'recipientPhoneNumber': instance.recipientPhoneNumber,
      'value': instance.value,
      'purchaser': instance.purchaser,
      'purchaserName': instance.purchaserName,
      'transaction': instance.transaction,
      'issuer': instance.issuer,
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
