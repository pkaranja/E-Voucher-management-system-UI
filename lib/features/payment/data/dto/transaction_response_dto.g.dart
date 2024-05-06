// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionResponseDtoImpl _$$TransactionResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseDtoImpl(
      status: json['status'] as int,
      code: json['code'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$TransactionResponseDtoImplToJson(
        _$TransactionResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };
