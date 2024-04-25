import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zawadi/core/helpers/data/pagination/pagination_sort_dto.dart';

part 'pageable_dto.freezed.dart';
part 'pageable_dto.g.dart';

@freezed
class PageableDTO with _$PageableDTO {
  factory PageableDTO({
    required int pageNumber,
    required int pageSize,
    required PaginationSortDTO sort,
    required int offset,
    required bool paged,
    required bool unpaged,
  }) = _PageableDTO;

  factory PageableDTO.fromJson(Map<String, dynamic> json) =>
      _$PageableDTOFromJson(json);
}