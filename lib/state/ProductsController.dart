import 'package:get/get.dart';
import 'dart:math';
import '../models/item.dart';

class ProductsController extends GetxController {
  final RxList<Item> _items = List.generate(
      100,
      (index) => Item(
          id: index,
          name: 'Product $index',
          price: Random().nextDouble() * 100,
          inWishList: false.obs)).obs;

  List<Item> get items {
    return [..._items];
  }

  List<Item> get wishListItems {
    return _items.where((item) => item.inWishList.value == true).toList();
  }

  void addItem(int id) {
    final int index = _items.indexWhere((element) => element.id == id);
    _items[index].inWishList.value = true;
  }

  void removeItem(int id) {
    final int index = _items.indexWhere((element) => element.id == id);
    _items[index].inWishList.value = false;
  }
}
