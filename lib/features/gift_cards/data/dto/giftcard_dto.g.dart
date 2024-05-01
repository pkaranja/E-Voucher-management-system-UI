// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giftcard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftcardDTOImpl _$$GiftcardDTOImplFromJson(Map<String, dynamic> json) =>
    _$GiftcardDTOImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => DataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GiftcardDTOImplToJson(_$GiftcardDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'meta': instance.meta,
    };

_$GiftcardDetailDTOImpl _$$GiftcardDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GiftcardDetailDTOImpl(
      content: DataDTO.fromJson(json['content'] as Map<String, dynamic>),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GiftcardDetailDTOImplToJson(
        _$GiftcardDetailDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'meta': instance.meta,
    };

_$DataDTOImpl _$$DataDTOImplFromJson(Map<String, dynamic> json) =>
    _$DataDTOImpl(
      id: json['id'] as String,
      attributes:
          AttributeDTO.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataDTOImplToJson(_$DataDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$MetaDTOImpl _$$MetaDTOImplFromJson(Map<String, dynamic> json) =>
    _$MetaDTOImpl(
      pagination: json['pagination'] == null
          ? null
          : PaginationDTO.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaDTOImplToJson(_$MetaDTOImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

_$AttributeDTOImpl _$$AttributeDTOImplFromJson(Map<String, dynamic> json) =>
    _$AttributeDTOImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      cvv: json['cvv'] as int,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      message: json['message'] as String,
      purchaserId: json['purchaserId'] as String,
      title: json['title'] as String,
      themeId: json['themeId'] as int,
      recipient: json['recipient'] as String,
      value: json['value'] as int,
      status: $enumDecode(_$GiftcardStateEnumMap, json['status']),
      transactionId: json['transactionId'] as String,
      issuerId: json['issuerId'] as String,
    );

Map<String, dynamic> _$$AttributeDTOImplToJson(_$AttributeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'cvv': instance.cvv,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'expirationDate': instance.expirationDate.toIso8601String(),
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'message': instance.message,
      'purchaserId': instance.purchaserId,
      'title': instance.title,
      'themeId': instance.themeId,
      'recipient': instance.recipient,
      'value': instance.value,
      'status': _$GiftcardStateEnumMap[instance.status]!,
      'transactionId': instance.transactionId,
      'issuerId': instance.issuerId,
    };

const _$GiftcardStateEnumMap = {
  GiftcardState.PENDING: 'PENDING',
  GiftcardState.ACTIVE: 'ACTIVE',
  GiftcardState.REDEEMED: 'REDEEMED',
  GiftcardState.EXPIRED: 'EXPIRED',
  GiftcardState.CANCELLED: 'CANCELLED',
  GiftcardState.REFUNDED: 'REFUNDED',
};
