import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_sort_dto.freezed.dart';
part 'pagination_sort_dto.g.dart';

@freezed
class PaginationSortDTO with _$PaginationSortDTO {
  factory PaginationSortDTO({
    required bool sorted,
    required bool empty,
    required bool unsorted,
  }) = _PaginationSortDTO;

  factory PaginationSortDTO.fromJson(Map<String, dynamic> json) =>
      _$PaginationSortDTOFromJson(json);
}