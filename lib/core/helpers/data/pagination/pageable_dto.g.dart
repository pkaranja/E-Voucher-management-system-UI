// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageableDTOImpl _$$PageableDTOImplFromJson(Map<String, dynamic> json) =>
    _$PageableDTOImpl(
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      sort: PaginationSortDTO.fromJson(json['sort'] as Map<String, dynamic>),
      offset: json['offset'] as int,
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
    );

Map<String, dynamic> _$$PageableDTOImplToJson(_$PageableDTOImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'sort': instance.sort,
      'offset': instance.offset,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };
