import 'package:ecommerce/models/items_model.dart';
import 'package:ecommerce/theme/custom_colors.dart';
import 'package:ecommerce/utils/Utils.dart';
import 'package:flutter/material.dart';

import '../screens/ProductDetails/productDetails_screen.dart';

class CardProduct extends StatelessWidget {
  final Utils utils = Utils();
  final ItemModel item;

  CardProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                  item: item,
                ),
              ),
            );
          },
          child: Card(
            color: Colors.white,
            elevation: 1,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Imagem do produto
                  Expanded(
                    child: Hero(
                      tag: item.imgUrl,
                      child: Image.asset(item.imgUrl),
                    ),
                  ),
                  // Nome
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Preço - Unidade
                  Row(
                    children: [
                      Text(
                        utils.priceToCurrency(item.price),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatch,
                        ),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 3,
            right: 3,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 35,
                decoration: BoxDecoration(
                    color: CustomColors.customSwatch,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(14),
                    )),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )),
      ],
    );
  }
}
