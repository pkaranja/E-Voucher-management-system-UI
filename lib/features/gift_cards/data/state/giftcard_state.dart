import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/giftcard_model.dart';

part 'giftcard_state.freezed.dart';

@freezed
class GiftcardState with _$GiftcardState {
  GiftcardState._();
  factory GiftcardState({
    @Default([]) List<GiftcardModel> giftcards,
    GiftcardModel? giftcard,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorMessage,
  }) = _GiftcardState;
}