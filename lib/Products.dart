import 'package:get/get.dart';

class Product {
  final String content;
  final String imageUrl;
  final String title;

  Product({required this.content, required this.imageUrl, required this.title});
}

class CartController extends GetxController {
  final cartItems = <Product>[].obs;

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }
}
class favouriteController extends GetxController {
  final cartItems = <Product>[].obs;

  void addToCart(Product product) {
    cartItems.add(product);
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 2.obs;

  void setIndex(int index) {
    selectedIndex.value = index;
  }
}
