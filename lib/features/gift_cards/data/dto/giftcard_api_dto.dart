import '../../../../core/config/constants.dart';

class GiftCardApiDto {
  final int theme;
  final String title;
  final int value;
  final DateTime expirationDate;
  final String message;
  final String purchaserName;
  final String purchaser;
  final String recipientPhoneNumber;
  String recipientName;
  GiftcardState state;
  final String issuer;

  GiftCardApiDto({
    required this.theme,
    required this.title,
    required this.value,
    required this.expirationDate,
    required this.message,
    required this.purchaserName,
    required this.purchaser,
    required this.recipientPhoneNumber,
    required this.issuer,
    this.recipientName = '',
    this.state = GiftcardState.PENDING,
  });

}