import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/issuer_model.dart';

part 'issuer_state.freezed.dart';

@freezed
class IssuerState with _$IssuerState {
  IssuerState._();
  factory IssuerState({
    @Default([]) List<IssuerModel> issuers,
    IssuerModel? issuer,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorMessage,
  }) = _IssuerState;
}