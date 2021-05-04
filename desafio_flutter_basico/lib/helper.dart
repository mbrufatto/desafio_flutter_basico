import 'package:intl/intl.dart';

class Helper {
  static String formatPrice(double price) {
    var f =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2);
    return f.format(price);
  }
}
