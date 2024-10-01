
import 'package:intl/intl.dart';

class Utils{
  String priceToCurrency (double price){
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return formatter.format(price);
  }
}