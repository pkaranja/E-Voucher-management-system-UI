import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
import '../model/issuer_model.dart';

part 'issuer_dto.freezed.dart';
part 'issuer_dto.g.dart';

@freezed
class IssuerDTO with _$IssuerDTO {
  factory IssuerDTO({
    required List<DataDTO> content,
    required MetaDTO meta,
  }) = _IssuerDTO;

  factory IssuerDTO.fromJson(Map<String, dynamic> json) =>
      _$IssuerDTOFromJson(json);
}

@freezed
class IssuerDetailDTO with _$IssuerDetailDTO {
  factory IssuerDetailDTO({
    required DataDTO content,
    required MetaDTO meta,
  }) = _IssuerDetailDTO;

  factory IssuerDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {
  factory DataDTO({
    required String id,
    required AttributeDTO attributes,
  }) = _DataDTO;

  DataDTO._();

  IssuerModel toModel() {
    return IssuerModel(
      id: id,
      name: attributes.name,
      email: attributes.email,
      phone: attributes.phone,
      hits: attributes.hits,
      logo: attributes.logo,
      minAmount: attributes.minAmount,
      maxAmount: attributes.maxAmount,
      popular: attributes.popular,
      featured: attributes.featured,
      status: attributes.status,
      address: attributes.address,
      website: attributes.website,
      facebook: attributes.facebook,
      instagram: attributes.instagram,
      primaryColor: attributes.primaryColor,
      secondaryColor: attributes.secondaryColor,
      primaryFontColor: attributes.primaryFontColor,
      secondaryFontColor: attributes.secondaryFontColor,
      description: attributes.description,
      //pagination: attributes.pagination
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
    required String id,
    required String name,
    required String email,
    required String phone,
    required int hits,
    required String logo,
    required String minAmount,
    required String maxAmount,
    required bool popular,
    required bool featured,
    required ActiveStatus status,
    String? address,
    String? website,
    String? facebook,
    String? instagram,
    String? primaryColor,
    String? secondaryColor,
    String? primaryFontColor,
    String? secondaryFontColor,
    String? description,
    //PaginationDTO? pagination,
  }) = _AttributeDTO;

  factory AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$AttributeDTOFromJson(json);
}
