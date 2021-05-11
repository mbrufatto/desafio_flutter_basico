import 'package:intl/intl.dart';

class Helper {
  static String formatPrice({double price = 0.0, String symbol = 'R\$'}) {
    var f = NumberFormat.currency(
        locale: 'pt_BR', symbol: symbol, decimalDigits: 2);
    return f.format(price);
  }
}
