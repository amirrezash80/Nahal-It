import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/bottomNavigationBar.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('سبد خرید'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<CartController>(
            builder: (controller) => ListView.builder(
              itemCount: controller.cartItems.length,
              itemBuilder: (context, index) {
                CartItem cartItem = controller.cartItems[index];
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    height: size.height * 0.1,
                    child: ListTile(
                      title: Text(cartItem.product.title),
                      subtitle: Text('Quantity: ${cartItem.quantity}'),
                      leading: Container(
                        child: Image.network(cartItem.product.imageUrl),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.remove_shopping_cart),
                        onPressed: () {
                          controller.removeFromCart(cartItem.product);
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
      ),
    );
  }
}
