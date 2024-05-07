// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDTOImpl _$$CategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDTOImpl(
      content: (json['content'] as List<dynamic>)
          .map((e) => DataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryDTOImplToJson(_$CategoryDTOImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'meta': instance.meta,
    };

_$CategoryDetailDTOImpl _$$CategoryDetailDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDetailDTOImpl(
      content: DataDTO.fromJson(json['content'] as Map<String, dynamic>),
      meta: MetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryDetailDTOImplToJson(
        _$CategoryDetailDTOImpl instance) =>
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
      icon: json['icon'] as String,
      status: json['status'] as String,
      backgroundColor: json['backgroundColor'] as String? ?? 'F0F0F0',
      order: json['order'] as int,
    );

Map<String, dynamic> _$$AttributeDTOImplToJson(_$AttributeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'status': instance.status,
      'backgroundColor': instance.backgroundColor,
      'order': instance.order,
    };
