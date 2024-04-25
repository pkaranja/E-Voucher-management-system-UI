// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDTOImpl _$$PaginationDTOImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDTOImpl(
      pageable: PageableDTO.fromJson(json['pageable'] as Map<String, dynamic>),
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      last: json['last'] as bool,
      size: json['size'] as int,
      number: json['number'] as int,
      sort: PaginationSortDTO.fromJson(json['sort'] as Map<String, dynamic>),
      numberOfElements: json['numberOfElements'] as int,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$PaginationDTOImplToJson(_$PaginationDTOImpl instance) =>
    <String, dynamic>{
      'pageable': instance.pageable,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'last': instance.last,
      'size': instance.size,
      'number': instance.number,
      'sort': instance.sort,
      'numberOfElements': instance.numberOfElements,
      'first': instance.first,
      'empty': instance.empty,
    };
