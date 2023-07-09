import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:nahal_it/Products.dart';
import 'package:nahal_it/Screens/Product_Screen.dart';
import 'package:nahal_it/fetch_products.dart';

import 'blog_screen.dart';

class StorePage extends StatelessWidget {
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('محصولات'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.015),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: FutureBuilder<List<dynamic>>(
            future: fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                List<dynamic> posts = snapshot.data!;

                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    var post = posts[index];
                    var yoastHeadJson = post['yoast_head_json'];
                    var ogImage = yoastHeadJson != null
                        ? yoastHeadJson['og_image']
                        : null;
                    var imageUrl = ogImage != null ? ogImage[0]['url'] : null;

                    return ListTile(
                      title: Column(
                        children: [
                          imageUrl != null
                              ? Container(
                                  width: size.width,
                                  height: size.height * 0.4,
                                  child: Image.network(
                                    imageUrl,
                                    width: size.width,
                                    height: size.height * 0.4,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              : Container(),
                          SizedBox(height: size.height * 0.01),
                          Text(post['title']['rendered']),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Colors.green,
                                width: size.width * 0.4,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.more_rounded,
                                      color: Colors.white,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductContentScreen(
                                              content: posts[index]["content"]
                                                  ["rendered"],
                                              imageUrl: imageUrl ?? '',
                                              title: post['title']['rendered'],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "   مشاهده محصول ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.1,
                          )
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
