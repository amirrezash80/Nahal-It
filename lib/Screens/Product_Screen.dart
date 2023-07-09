import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Products.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cart_screen.dart';
import 'favourite_screen.dart';

class ProductContentScreen extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  const ProductContentScreen(
      {required this.content, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final cartController = Get.find<CartController>();
    final favouriteController =  Get.find<CartController>();
    final NavigationController navigationController = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  favouriteController.addToCart(Product(
                      content: content, imageUrl: imageUrl, title: title));
                  SnackBar snackBar = SnackBar(
                    backgroundColor: Colors.green.shade400,
                    content: Center(
                      child: Text(
                        "با موفقیت به علاقه‌مندی های شما اضافه شد",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Get.to(Favourite_Screen());
                },
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {
                  navigationController.selectedIndex.value = 3;
                  Get.offAll(CartPage());
                },
                icon: Icon(Icons.shopping_cart),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                imageUrl.isNotEmpty
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.fill,
                      )
                    : Container(), // Display the image if imageUrl is not empty
                Html(
                  data: content,
                  onLinkTap: (url, attributes, element) async {
                    try {
                      if (await canLaunch(url!)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    } catch (e) {
                      // Display an error message to the user
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Error'),
                            content: Text('Failed to open the link: $url'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: {
                    "p": Style(
                      fontFamily: "PersianFonts.Vazir",
                      fontSize: FontSize.medium,
                      alignment: Alignment.center,
                      lineHeight: LineHeight.em(1.6),
                    ),
                    "img": Style(
                        width: Width(size.width),
                        padding: HtmlPaddings.only(right: 20)),
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.4,
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "افزودن به سبد علاقه ها",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                        width: size.width * 0.4,
                        color: Colors.green,
                        child: TextButton(
                          onPressed: () {
                            cartController.addToCart(Product(
                                content: content,
                                imageUrl: imageUrl,
                                title: title));
                            SnackBar snackBar = SnackBar(
                              backgroundColor: Colors.green.shade400,
                              content: Center(
                                child: Text(
                                  "با موفقیت به سبد خرید شما اضافه شد",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Text(
                            "   اضافه به سبد خرید ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
