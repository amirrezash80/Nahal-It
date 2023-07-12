import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Product {
  final String content;
  final String imageUrl;
  final String title;

  Product({required this.content, required this.imageUrl, required this.title});
}

class fetchproduct {
  List<dynamic>? products;
  bool isDataLoaded = false;
}

class SearchController {
  bool isFilterd = false;
  String textFilter = '';
}

class CartController extends GetxController {
  final cartItems = <CartItem>[].obs;

  void addToCart(Product product) {
    bool productExists = false;

    for (var item in cartItems) {
      if (item.product.title == product.title) {
        item.quantity++;
        productExists = true;
        break;
      }
    }

    if (!productExists) {
      cartItems.add(CartItem(product: product, quantity: 1));
    }

    update(); // Update the UI manually
  }

  void removeFromCart(Product product) {
    var existingProduct = cartItems.firstWhere(
      (item) => item.product.title == product.title,
      orElse: () => CartItem(
          product: Product(content: '', imageUrl: '', title: ''), quantity: 0),
    );

    if (existingProduct != null) {
      if (existingProduct.quantity > 1) {
        existingProduct.quantity--;
      } else {
        cartItems.remove(existingProduct);
      }

      update(); // Update the UI manually
    }
  }
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}

class FavouriteController extends GetxController {
  final cartItems = <Product>[].obs;

  bool isProductAdded(Product product) {
    return cartItems.any((item) => item.title == product.title);
  }

  void addToCart(Product product) {
    if (!isProductAdded(product)) {
      cartItems.add(product);
    }
  }

  void removeFromCart(Product product) {
    cartItems.removeWhere((item) => item.title == product.title);
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 2.obs;

  void setIndex(int index) {
    selectedIndex.value = index;
  }
}

class ProfileController extends GetxController {
  var imagePath = ''.obs;
  var name = ''.obs;
  var phoneNumber = ''.obs;
  var refundMethod = ''.obs;
  var nationalCode = ''.obs;
  var landlineNumber = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var isEditingName = false.obs;

  void setImage(String path) {
    imagePath.value = path;
  }

  void setName(String newName) {
    name.value = newName;
  }

  void setPhone(String newName) {
    phoneNumber.value = newName;
  }

  void setrefund(String newName) {
    refundMethod.value = newName;
  }

  void setNationalcode(String newName) {
    nationalCode.value = newName;
  }

  void setNumber(String newName) {
    landlineNumber.value = newName;
  }

  void setEmail(String newName) {
    email.value = newName;
  }

  void setPassword(String newName) {
    password.value = newName;
  }
}

class AuthController extends GetxController {
  late final SupabaseClient supabaseClient;
  final storage = GetStorage();

  String? get username => storage.read('username');

  @override
  void onInit() {
    supabaseClient = Supabase.instance.client;
    super.onInit();
  }

  Future<AuthResponse> signIn(
      {required String email, required String password}) async {
    final response = await supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user != null) {
      storage.write('username', email);
    }

    return response;
  }

  Future<AuthResponse> signUp(
      {required String email, required String password}) async {
    final response = await supabaseClient.auth.signUp(
      email: email,
      password: password,
    );

    if (response.user != null) {
      storage.write('username', email);
    }

    return response;
  }

  Future<void> signOut() async {
    await supabaseClient.auth.signOut();
    storage.remove('username');
  }
}

class mySliderContent {
  List<String> title = List<String>.filled(5, 'loading');
  List<String> imgList = List<String>.filled(5,
      'https://i.gifer.com/origin/34/34338d26023e5515f6cc8969aa027bca_w200.gif');
  List<String> content = List<String>.filled(5, 'loading');
}

class user {
  String username = 'guest';
}
