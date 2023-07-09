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
            child: MainDrawer(
              username: "username",
            ),
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
                      height: size.height * 0.1,
                      child: Card(
                        elevation: 4,
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage(product.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Tap to view details',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.playlist_remove_outlined),
                              onPressed: () {
                                favouriteController.removeFromCart(product);
                              },
                            ),
                          ],
                        ),
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
