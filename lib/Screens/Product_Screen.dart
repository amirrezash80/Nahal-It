import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cart_screen.dart';

class ProductContentScreen extends StatefulWidget {
  final String title;
  final String content;
  final String imageUrl;

  const ProductContentScreen({
    required this.content,
    required this.imageUrl,
    required this.title,
  });

  @override
  State<ProductContentScreen> createState() => _ProductContentScreenState();
}

class _ProductContentScreenState extends State<ProductContentScreen> {
  bool favouritePressed = false;
  IconData favouriteIcon = Icons.favorite_border_sharp;
  final favouriteController = Get.find<FavouriteController>();

  @override
  void initState() {
    super.initState();
    checkFavourite();
  }

  void checkFavourite() {
    setState(() {
      favouritePressed = favouriteController.isProductAdded(
        Product(
          content: widget.content,
          imageUrl: widget.imageUrl,
          title: widget.title,
        ),
      );
      favouriteIcon =
          favouritePressed ? Icons.favorite : Icons.favorite_border_sharp;
    });
  }

  void toggleFavourite() {
    setState(() {
      favouritePressed = !favouritePressed;
      favouriteIcon =
          favouritePressed ? Icons.favorite : Icons.favorite_border_sharp;

      if (favouritePressed) {
        favouriteController.addToCart(
          Product(
            content: widget.content,
            imageUrl: widget.imageUrl,
            title: widget.title,
          ),
        );
      } else {
        favouriteController.removeFromCart(
          Product(
            content: widget.content,
            imageUrl: widget.imageUrl,
            title: widget.title,
          ),
        );
      }
    });
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final cartController = Get.find<CartController>();
    final NavigationController navigationController = Get.find();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: size.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.imageUrl,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            backgroundColor: Colors.green,
            actions: [
              IconButton(
                onPressed: toggleFavourite,
                icon: Icon(
                  favouriteIcon,
                  color: favouritePressed ? Colors.redAccent : Colors.red,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  navigationController.selectedIndex.value = 3;
                  Get.to(CartPage());
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.green.shade800,
                          ),
                        ),
                        SizedBox(height: 10),
                        Html(
                          data: widget.content,
                          onLinkTap: (url, attributes, element) async {
                            try {
                              if (await canLaunch(url!)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            } catch (e) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Error'),
                                    content:
                                        Text('Failed to open the link: $url'),
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
                              padding: HtmlPaddings.only(right: 20),
                            ),
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Product Reviews'),
                    onTap: () {
                      // Implement reviews screen navigation
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Share Product'),
                    onTap: () {
                      // Implement share functionality
                    },
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "قیمت: ؟؟",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green.shade800,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  cartController.addToCart(
                    Product(
                      content: widget.content,
                      imageUrl: widget.imageUrl,
                      title: widget.title,
                    ),
                  );
                  SnackBar snackBar = SnackBar(
                    backgroundColor: Colors.green.shade400,
                    duration: Duration(seconds: 1),
                    content: Center(
                      child: Text(
                        "با موفقیت به سبد خرید شما اضافه شد",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  "اضافه به سبد خرید",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
