import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflex/state/ProductsController.dart';

class WishListScreen extends StatelessWidget {
  final ProductsController _p = Get.find<ProductsController>();

  WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WishLIst'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: _p.wishListItems.length,
          itemBuilder: (BuildContext context, int index) {
            final item = _p.wishListItems[index];
            return Card(
              key: ValueKey(item.id),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[200],
              child: ListTile(
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    item.inWishList.value = false;
                    _p.removeItem(item.id);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
