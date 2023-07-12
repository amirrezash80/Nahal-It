import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/Screens/Product_Screen.dart';
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
          padding: const EdgeInsets.all(16.0),
          child: GetBuilder<CartController>(
            builder: (controller) => Column(
              children: [
                if (controller.cartItems.isEmpty)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 64.0,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16.0),
                        Center(
                          child: Text(
                            'سبد خرید شما خالی است',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.cartItems.length,
                      itemBuilder: (context, index) {
                        CartItem cartItem = controller.cartItems[index];
                        return Directionality(
                          textDirection: TextDirection.rtl,
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(16.0),
                              title: Text(
                                cartItem.product.title,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'تعداد: ${cartItem.quantity}',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              leading: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      cartItem.product.imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.remove_shopping_cart),
                                color: Colors.red,
                                onPressed: () {
                                  controller.removeFromCart(cartItem.product);
                                },
                              ),
                              onTap: () {
                                Get.to(ProductContentScreen(
                                  content: cartItem.product.content,
                                  imageUrl: cartItem.product.imageUrl,
                                  title: cartItem.product.title,
                                ));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform checkout action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 24.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'تایید سفارش',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Convex(),
      ),
    );
  }
}
