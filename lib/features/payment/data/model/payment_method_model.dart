import '../../../../core/config/constants.dart';

class PaymentMethod {
  final String name;
  final PaymentType type;
  final String assetName;

  PaymentMethod({
    required this.name,
    required this.type,
    required this.assetName,
  });
}