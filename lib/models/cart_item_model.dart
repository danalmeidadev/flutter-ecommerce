
import 'package:ecommerce/models/items_model.dart';

class CartItemModel{
  ItemModel item;
  int quantity;

  CartItemModel({
    required this.item,
    required this.quantity,
  });

  double totalPrice(){
    return item.price * quantity;
  }
}

