import 'package:ecommerce/components/CardProduct.dart';
import 'package:ecommerce/components/CategoryTitle.dart';
import 'package:ecommerce/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import '../../mock/data_item.dart' as app_data;

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  String category = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: 'Green',
                  style: TextStyle(color: CustomColors.customSwatch)),
              TextSpan(
                  text: 'grocer',
                  style: TextStyle(color: CustomColors.customContrasticColor))
            ])),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                backgroundColor: CustomColors.customContrasticColor,
                label: const Text(
                  '101',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          // Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColors.customContrasticColor,
                ),
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Lista de categorias horizontal
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryTitle(
                    category: app_data.categories[index],
                    isSelected: app_data.categories[index] == category,
                    onPressed: () {
                      setState(() {
                        category = app_data.categories[index];
                      });
                    },
                  );
                },
                separatorBuilder: (_, index) => const SizedBox(width: 10),
                itemCount: app_data.categories.length),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11,
              ),
              itemCount: app_data.items.length,
              itemBuilder: (_, index) {
                return  CardProduct(
                  item: app_data.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
