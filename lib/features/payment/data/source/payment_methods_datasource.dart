import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/payment_method_model.dart';

final List<PaymentMethod> methods = [
  PaymentMethod(
    name: 'Tigo Pesa',
    type: 'mobile',
    assetName: 'assets/images/paymentmethods/tigopesa.png',
  ),
  PaymentMethod(
    name: 'M-Pesa',
    type: 'mobile',
    assetName: 'assets/images/paymentmethods/mpesa.jpg',
  ),
  PaymentMethod(
    name: 'Airtel ',
    type: 'mobile',
    assetName: 'assets/images/paymentmethods/airtelmoney.png',
  ),
];

final paymentMethodsProvider = Provider<List<PaymentMethod>>((ref) => methods);