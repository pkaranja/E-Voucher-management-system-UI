// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerModelImpl _$$IssuerModelImplFromJson(Map<String, dynamic> json) =>
    _$IssuerModelImpl(
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

Map<String, dynamic> _$$IssuerModelImplToJson(_$IssuerModelImpl instance) =>
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
