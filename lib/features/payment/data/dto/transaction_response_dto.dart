import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_dto.freezed.dart';
part 'transaction_response_dto.g.dart';

@freezed
class TransactionResponseDto with _$TransactionResponseDto {
  factory TransactionResponseDto({
    required bool status,
    required int code,
    required String message,
  }) = _TransactionResponseDto;

  factory TransactionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseDtoFromJson(json);
}
