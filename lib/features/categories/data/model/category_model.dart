import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  CategoryModel._();
  factory CategoryModel({
    required int id,
    required String name,
    required String icon,
    required String status,
    String? backgroundColor,
    required int order,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toRequest() {
    return {
      'name': name,
      'icon': icon,
      'status': status,
      'backgroundColor': backgroundColor,
      'order': order,
    };
  }
}