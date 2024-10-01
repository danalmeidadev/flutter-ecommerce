import 'package:flutter/material.dart';
import '../../mock/data_item.dart' as app_data;


class OrderSreen extends StatelessWidget {
  const OrderSreen({super.key});

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Pedidos',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (_, index) => const SizedBox(height: 10),
          itemCount: app_data.orders.length,
          itemBuilder: itemBuilder,
      ),
    );
  }
}
