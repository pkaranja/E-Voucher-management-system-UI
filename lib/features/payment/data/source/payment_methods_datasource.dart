import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zawadi/core/config/constants.dart';
import '../model/payment_method_model.dart';

final List<PaymentMethod> methods = [
  PaymentMethod(
    name: 'Tigo Pesa',
    type: PaymentType.MOBILE,
    assetName: 'assets/images/paymentmethods/tigopesa.png',
  ),
  PaymentMethod(
    name: 'M-Pesa',
    type: PaymentType.MOBILE,
    assetName: 'assets/images/paymentmethods/mpesa.jpg',
  ),
  PaymentMethod(
    name: 'Airtel ',
    type: PaymentType.MOBILE,
    assetName: 'assets/images/paymentmethods/airtelmoney.png',
  ),
];

final paymentMethodsProvider = Provider<List<PaymentMethod>>((ref) => methods);