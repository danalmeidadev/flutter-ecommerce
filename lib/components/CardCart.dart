import 'package:ecommerce/components/QuantityWidget.dart';
import 'package:ecommerce/models/cart_item_model.dart';
import 'package:ecommerce/theme/custom_colors.dart';
import 'package:ecommerce/utils/Utils.dart';
import 'package:flutter/material.dart';

class CardCart extends StatefulWidget {
  final CartItemModel cartItem;
  final Function(CartItemModel) removeItem;


  const CardCart({super.key, required this.cartItem, required this.removeItem});

  @override
  State<CardCart> createState() => _CardCartState();
}

class _CardCartState extends State<CardCart> {
  final Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      child: ListTile(
        // Imagem do produto
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),
        // titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        // Total
        subtitle: Text(
          utils.priceToCurrency(widget.cartItem.totalPrice()),
          style: TextStyle(
            color: CustomColors.customSwatch,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Quantidade
        trailing: QuantityWidget(
            value: widget.cartItem.quantity,
            suffixText: widget.cartItem.item.unit,
            isRemovable: true,

            result: (quantity) {
              setState(() {
                widget.cartItem.quantity = quantity;

                if(quantity == 0){
                  widget.removeItem(widget.cartItem);
                }
              });
            }),
      ),
    );
  }
}
