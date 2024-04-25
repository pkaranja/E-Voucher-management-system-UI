import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zawadi/core/helpers/data/pagination/pageable_dto.dart';
import 'package:zawadi/core/helpers/data/pagination/pagination_sort_dto.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDTO with _$PaginationDTO {
  factory PaginationDTO({
    required PageableDTO pageable,
    required int totalPages,
    required int totalElements,
    required bool last,
    required int size,
    required int number,
    required PaginationSortDTO sort,
    required int numberOfElements,
    required bool first,
    required bool empty,
  }) = _PaginationDTO;

  factory PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationDTOFromJson(json);
}

