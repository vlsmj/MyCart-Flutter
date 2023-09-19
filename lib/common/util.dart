import 'package:intl/intl.dart';

class Util {
  static const String _currency = 'P';

  static String convertToCurrency(int price) {
    var f = NumberFormat("#,###", "en_US");
    String priceString = f.format(price);
    return '$_currency$priceString';
  }
}
