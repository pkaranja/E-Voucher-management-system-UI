import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/category_model.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  CategoryState._();
  factory CategoryState({
    @Default([]) List<CategoryModel> categories,
    CategoryModel? category,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorMessage,
  }) = _CategoryState;
}