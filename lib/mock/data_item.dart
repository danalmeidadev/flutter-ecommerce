import 'package:ecommerce/models/cart_item_model.dart';
import 'package:ecommerce/models/items_model.dart';
import 'package:ecommerce/models/order_model.dart';
import 'package:ecommerce/models/user_model.dart';

ItemModel apple = ItemModel(
    itemName: 'Maçã',
    imgUrl: 'assets/fruits/apple.png',
    unit: 'kg',
    price: 5.5,
    description: 'A melhor maçã da região e com o melhor preço!');

ItemModel grape = ItemModel(
    itemName: 'Uva',
    imgUrl: 'assets/fruits/grape.png',
    unit: 'kg',
    price: 10.5,
    description: 'A melhor uva da região e com o melhor preço!');

ItemModel guave = ItemModel(
    itemName: 'Goiaba',
    imgUrl: 'assets/fruits/guava.png',
    unit: 'kg',
    price: 3.5,
    description: 'A melhor goiaba da região e com o melhor preço!');

ItemModel kiwi = ItemModel(
    itemName: 'Kiwi',
    imgUrl: 'assets/fruits/kiwi.png',
    unit: 'kg',
    price: 7.5,
    description: 'O melhor kiwi da região e com o melhor preço!');

ItemModel mango = ItemModel(
    itemName: 'Manga',
    imgUrl: 'assets/fruits/mango.png',
    unit: 'kg',
    price: 6.5,
    description: 'A melhor manga da região e com o melhor preço!');

ItemModel papaya = ItemModel(
    itemName: 'Mamão',
    imgUrl: 'assets/fruits/papaya.png',
    unit: 'kg',
    price: 4.5,
    description: 'O melhor mamão da região e com o melhor preço!');

List<ItemModel> items = [
  apple,
  grape,
  guave,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Legumes',
  'Verduras',
  'Carnes',
  'Peixes',
  'Bebidas',
  'Laticínios',
  'Padaria',
  'Higiene',
  'Limpeza',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guave, quantity: 3),
];

UserModel user = UserModel(
  name: 'João',
  email: 'teste@teste.com',
  cpf: '123.456.789-00',
  phone: '(11) 99999-9999',
  password: '123456',
);

List<OrderModel> orders = [
  OrderModel(
    id: '1',
    items: [
      CartItemModel(item: apple, quantity: 2),
    ],
    createDateTime: DateTime.now(),
    overdueDateTime: DateTime.now().add(
      const Duration(days: 7),
    ),
    status: 'pedding_payment',
    copyAndPaste: '784937942',
    total: 11.0,
  ),
];
