// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      icon: json['icon'] as String,
      status: json['status'] as String,
      backgroundColor: json['backgroundColor'] as String?,
      order: json['order'] as int,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'status': instance.status,
      'backgroundColor': instance.backgroundColor,
      'order': instance.order,
    };
