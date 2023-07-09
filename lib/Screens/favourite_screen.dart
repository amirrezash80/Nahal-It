import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Products.dart';
import 'package:nahal_it/bottomNavigationBar.dart';

class Favourite_Screen extends StatelessWidget {
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(' علاقه مندی ها'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
              () => ListView.builder(
            itemCount: cartController.cartItems.length,
            itemBuilder: (context, index) {
              Product product = cartController.cartItems[index];
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: size.height * 0.1,
                  child: ListTile(
                    title: Text(product.title),
                    leading: Container(
                      // height: size.height,
                        child: Image.network(product.imageUrl)),
                    trailing: IconButton(
                      icon: Icon(Icons.playlist_remove_outlined),
                      onPressed: () {
                        cartController.removeFromCart(product);
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Convex(),
    );
  }
}
