import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
import '../model/giftcard_model.dart';

part 'giftcard_dto.freezed.dart';
part 'giftcard_dto.g.dart';

@freezed
class GiftcardDTO with _$GiftcardDTO {
  factory GiftcardDTO({
    required List<DataDTO> content,
    required MetaDTO meta,
  }) = _GiftcardDTO;

  factory GiftcardDTO.fromJson(Map<String, dynamic> json) =>
      _$GiftcardDTOFromJson(json);
}

@freezed
class GiftcardDetailDTO with _$GiftcardDetailDTO {
  factory GiftcardDetailDTO({
    required DataDTO content,
    required MetaDTO meta,
  }) = _GiftcardDetailDTO;

  factory GiftcardDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$GiftcardDetailDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {
  factory DataDTO({
    required String id,
    required AttributeDTO attributes,
  }) = _DataDTO;

  DataDTO._();

  GiftcardModel toModel() {
    return GiftcardModel(
      id: attributes.id,
      code: attributes.code,
      cvv: attributes.cvv,
      dateCreated: attributes.dateCreated,
      expirationDate: attributes.expirationDate,
      lastUpdated: attributes.lastUpdated,
      title: attributes.title,
      message: attributes.message,
      theme: attributes.theme,
      recipient: attributes.recipient,
      recipientName: attributes.recipientName,
      recipientPhoneNumber: attributes.recipientPhoneNumber,
      value: attributes.value,
      purchaser: attributes.purchaser,
      purchaserName: attributes.purchaserName,
      transaction: attributes.transaction,
      issuer: attributes.issuer,
      status: attributes.status,
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
    required String code,
    required int cvv,
    required DateTime dateCreated,
    required DateTime expirationDate,
    required DateTime lastUpdated,
    required String title,
    required String message,
    required int theme,
    required String recipient,
    required String recipientName,
    required String recipientPhoneNumber,
    required int value,
    required String purchaser,
    required String purchaserName,
    required String transaction,
    required String issuer,
    required GiftcardState status,
    //PaginationDTO? pagination,
  }) = _AttributeDTO;

  factory AttributeDTO.fromJson(Map<String, dynamic> json) =>
      _$AttributeDTOFromJson(json);
}
