import 'package:intl/intl.dart';

class Utils {
  //Format money
  static String formatMoney(dynamic amount, {String locale = 'sw_TZ'}) {
    final moneyFormat = NumberFormat.currency(locale: locale, symbol: 'Tzs', decimalDigits: 0);
    return moneyFormat.format(amount);
  }
}