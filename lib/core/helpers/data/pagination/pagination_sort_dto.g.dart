// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_sort_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationSortDTOImpl _$$PaginationSortDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationSortDTOImpl(
      sorted: json['sorted'] as bool,
      empty: json['empty'] as bool,
      unsorted: json['unsorted'] as bool,
    );

Map<String, dynamic> _$$PaginationSortDTOImplToJson(
        _$PaginationSortDTOImpl instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'empty': instance.empty,
      'unsorted': instance.unsorted,
    };
