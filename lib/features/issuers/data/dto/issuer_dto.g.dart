// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerDTOImpl _$$IssuerDTOImplFromJson(Map<String, dynamic> json) =>
    _$IssuerDTOImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => DataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IssuerDTOImplToJson(_$IssuerDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'meta': instance.meta,
    };

_$IssuerDetailDTOImpl _$$IssuerDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$IssuerDetailDTOImpl(
      content: DataDTO.fromJson(json['content'] as Map<String, dynamic>),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IssuerDetailDTOImplToJson(
        _$IssuerDetailDTOImpl instance) =>
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
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      hits: json['hits'] as int,
      logo: json['logo'] as String,
      minAmount: json['minAmount'] as String,
      maxAmount: json['maxAmount'] as String,
      popular: json['popular'] as bool,
      featured: json['featured'] as bool,
      status: $enumDecode(_$ActiveStatusEnumMap, json['status']),
      address: json['address'] as String?,
      website: json['website'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      primaryColor: json['primaryColor'] as String?,
      secondaryColor: json['secondaryColor'] as String?,
      primaryFontColor: json['primaryFontColor'] as String?,
      secondaryFontColor: json['secondaryFontColor'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AttributeDTOImplToJson(_$AttributeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'hits': instance.hits,
      'logo': instance.logo,
      'minAmount': instance.minAmount,
      'maxAmount': instance.maxAmount,
      'popular': instance.popular,
      'featured': instance.featured,
      'status': _$ActiveStatusEnumMap[instance.status]!,
      'address': instance.address,
      'website': instance.website,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'primaryFontColor': instance.primaryFontColor,
      'secondaryFontColor': instance.secondaryFontColor,
      'description': instance.description,
    };

const _$ActiveStatusEnumMap = {
  ActiveStatus.ACTIVE: 'ACTIVE',
  ActiveStatus.INACTIVE: 'INACTIVE',
};
