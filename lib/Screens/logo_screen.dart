import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Screens/login_screen.dart';

import '../Controller.dart';
import '../fetch_products.dart';

class LogoPage extends StatefulWidget {
  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    super.initState();
    fetchMyData().then((data) {
      returnData();
      setState(() {});
    });
    Future.delayed(Duration(seconds: 2)).then((_) {
      Get.offAll(LoginPage());
    });
  }

  Future<List<dynamic>> fetchMyData() async {
    final fetchproductController = Get.find<fetchproduct>();
    if (!fetchproductController.isDataLoaded) {
      try {
        final data = await fetchProducts();
        fetchproductController.products = data;
        fetchproductController.isDataLoaded = true;
      } catch (error) {
        print('Error fetching products: $error');
        return []; // or return an appropriate default value
      }
    }
    return fetchproductController.products ??
        []; // Use null-aware operator to handle null case
  }

  void returnData() {
    final fetchproductController = Get.find<fetchproduct>();
    final SliderContent = Get.find<mySliderContent>();
    for (int i = 1; i < 6; i++) {
      SliderContent.title[i - 1] = fetchproductController.products?[i]['title']
              ['rendered'] ??
          'Default Title';

      // Ensure a valid image URL is added to the imgList
      final imageUrl = fetchproductController.products?[i]['yoast_head_json']
          ['og_image'][0]['url'];
      SliderContent.imgList[i - 1] = imageUrl ?? 'Default Image URL';

      SliderContent.content[i - 1] = fetchproductController.products?[i]
              ['content']['rendered'] ??
          'Default Content';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.lightGreen,
          ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            // height:size.height*0.4,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("lib/images/Logo.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
