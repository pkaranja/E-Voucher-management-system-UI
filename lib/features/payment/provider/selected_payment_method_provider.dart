import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/model/payment_method_model.dart';
import '../data/source/payment_methods_datasource.dart';

final selectedPaymentMethodProvider = StateNotifierProvider<SelectedPaymentMethod, PaymentMethod?>((ref) {
  return SelectedPaymentMethod(null);
});

class SelectedPaymentMethod extends StateNotifier<PaymentMethod?> {
  SelectedPaymentMethod(PaymentMethod? initialMethod) : super(initialMethod);

  void selectPaymentMethod(PaymentMethod method) {
    state = method;
  }
}