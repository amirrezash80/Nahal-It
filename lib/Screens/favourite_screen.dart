import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/Screens/Product_Screen.dart';
import 'package:nahal_it/main_drawer.dart';

class Favourite_Screen extends StatelessWidget {
  final favouriteController = Get.find<FavouriteController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.white54,
            child: MainDrawer(),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('علاقه‌مندی‌ها'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => ListView.builder(
              itemCount: favouriteController.cartItems.length,
              itemBuilder: (context, index) {
                Product product = favouriteController.cartItems[index];
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => ProductContentScreen(
                            content: product.content,
                            imageUrl: product.imageUrl,
                            title: product.title,
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: size.width * 0.3,
                            height: size.height * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(product.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.playlist_remove_outlined,
                              size: 34,
                            ),
                            color: Colors.red,
                            onPressed: () {
                              favouriteController.removeFromCart(product);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
