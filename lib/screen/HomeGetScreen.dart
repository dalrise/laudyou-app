import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflex/screen/wish_screen.dart';

import '../state/ProductsController.dart';

class HomeGetScreen extends StatelessWidget {
  final ProductsController _p = Get.put(ProductsController());
  HomeGetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Status'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              width: double.maxFinite,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  'Wish List: ${_p.wishListItems.length}',
                  style: const TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            ),
            onTap: () {
              Get.to(() => WishListScreen());
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _p.items.length,
                itemBuilder: (context, index) {
                  final product = _p.items[index];
                  return Card(
                    key: ValueKey(product.id),
                    margin: const EdgeInsets.all(5),
                    color: Colors.amberAccent,
                    child: ListTile(
                      title: Text(product.name),
                      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                      trailing: Obx(() => IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: product.inWishList.value == false
                                ? Colors.white
                                : Colors.red,
                          ),
                          onPressed: () {
                            if (product.inWishList.value == false) {
                              _p.addItem(product.id);
                            } else {
                              _p.removeItem(product.id);
                            }
                          })),
                      // trailing: Obx(() => IconButton(
                      //       icon: Icon(Icons.favorite),
                      //       onPressed: () {},
                      //     )),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
