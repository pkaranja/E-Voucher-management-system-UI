import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
import '../model/category_model.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDTO with _$CategoryDTO {
  factory CategoryDTO({
    required List<DataDTO> content,
    required MetaDTO meta,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);
}

@freezed
class CategoryDetailDTO with _$CategoryDetailDTO {
  factory CategoryDetailDTO({
    required DataDTO content,
    required MetaDTO meta,
  }) = _CategoryDetailDTO;

  factory CategoryDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {

  factory DataDTO({ required int id, required AttributeDTO attributes, }) = _DataDTO;
  DataDTO._();

  CategoryModel toModel() {
    return CategoryModel(
      id: id,
      name: attributes.name,
      icon: attributes.icon,
      status: attributes.status,
      backgroundColor: attributes.backgroundColor,
      order: attributes.order,
    );
  }

  factory DataDTO.fromJson(Map<String, dynamic> json) =>
      _$DataDTOFromJson(json);
}

@freezed
class MetaDTO with _$MetaDTO {
  factory MetaDTO({ PaginationDTO? pagination, }) = _MetaDTO;

  factory MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaDTOFromJson(json);
}

@freezed
class AttributeDTO with _$AttributeDTO {
  factory AttributeDTO({
    required int id,
    required String name,
    required String icon,
    required String status,
    @Default('F0F0F0')
    String backgroundColor,
    required int order,
  }) = _AttributeDTO;

  factory AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$AttributeDTOFromJson(json);
}
