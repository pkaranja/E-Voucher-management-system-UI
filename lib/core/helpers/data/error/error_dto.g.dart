// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseDTOImpl _$$ErrorResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseDTOImpl(
      data: json['data'],
      error: ErrorDTO.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorResponseDTOImplToJson(
        _$ErrorResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

_$ErrorDTOImpl _$$ErrorDTOImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDTOImpl(
      status: json['status'] as int,
      name: json['name'] as String,
      message: json['message'] as String,
      details: ErrorDetailDTO.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorDTOImplToJson(_$ErrorDTOImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'name': instance.name,
      'message': instance.message,
      'details': instance.details,
    };

_$ErrorDetailDTOImpl _$$ErrorDetailDTOImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDetailDTOImpl();

Map<String, dynamic> _$$ErrorDetailDTOImplToJson(
        _$ErrorDetailDTOImpl instance) =>
    <String, dynamic>{};
