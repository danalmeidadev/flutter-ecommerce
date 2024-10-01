import 'package:ecommerce/models/cart_item_model.dart';

class OrderModel {
  String id;
  DateTime createDateTime;
  DateTime overdueDateTime;
  String status;
  String copyAndPaste;
  List<CartItemModel> items;
  double total;

  OrderModel({
    required this.id,
    required this.items,
    required this.createDateTime,
    required this.overdueDateTime,
    required this.status,
    required this.copyAndPaste,
    required this.total
  });

}