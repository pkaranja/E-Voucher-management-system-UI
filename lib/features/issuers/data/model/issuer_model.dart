import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/helpers/data/pagination/pagination_dto.dart';
part 'issuer_model.freezed.dart';
part 'issuer_model.g.dart';

@freezed
class IssuerModel with _$IssuerModel {
  IssuerModel._();

  factory IssuerModel({
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

    //Pagination
    //PaginationDTO? pagination,

  }) = _IssuerModel;

  factory IssuerModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerModelFromJson(json);

  Map<String, dynamic> toRequest() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "hits": hits,
      "logo": logo,
      "minAmount": minAmount,
      "maxAmount": maxAmount,
      "popular": popular,
      "featured": featured,
      "status": status,
      "address": address,
      "website": website,
      "facebook": facebook,
      "instagram": instagram,
      "primaryColor": primaryColor ?? '000000',
      "secondaryColor": secondaryColor ?? 'FFFFFF',
      "primaryFontColor": primaryFontColor ?? '000000',
      "secondaryFontColor": secondaryFontColor ?? '9FA6B6',
      "description": description
    };
  }
}