import 'package:ecommerce/screens/Home/home_tab_screen.dart';
import 'package:ecommerce/screens/Order/order_sreen.dart';
import 'package:ecommerce/screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';

import 'Cart/cart_tab.dart';

class BaseScreen extends StatefulWidget {
 const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTabScreen(),
          const CartTab(),
          const OrderSreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          items: const [
        BottomNavigationBarItem(

          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Carrinho'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Pedidos'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Perfil'
        ),

      ]),

    );
  }
}
