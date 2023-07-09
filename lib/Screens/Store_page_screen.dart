import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/Screens/Product_Screen.dart';
import 'package:nahal_it/fetch_products.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final cartController = Get.find<CartController>();
  final fetchproductController = Get.find<fetchproduct>();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    if (!fetchproductController.isDataLoaded) {
      try {
        final data = await fetchProducts();
        setState(() {
          fetchproductController.products = data;
          fetchproductController.isDataLoaded = true;
        });
      } catch (error) {
        print('Error fetching products: $error');
      }
    }
  }

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
          child: fetchproductController.isDataLoaded
              ? fetchproductController.products != null
                  ? GridView.builder(
                      padding:
                          EdgeInsets.all(10.0), // Adjust the padding as needed
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        // Adjust the aspect ratio as needed
                        crossAxisSpacing: 10.0,
                        // Add spacing between the products horizontally
                        mainAxisSpacing:
                            10.0, // Add spacing between the products vertically
                      ),
                      itemCount: fetchproductController.products!.length,
                      itemBuilder: (context, index) {
                        var post = fetchproductController.products![index];
                        var yoastHeadJson = post['yoast_head_json'];
                        var ogImage = yoastHeadJson != null
                            ? yoastHeadJson['og_image']
                            : null;
                        var imageUrl =
                            ogImage != null ? ogImage[0]['url'] : null;

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductContentScreen(
                                  content: post["content"]["rendered"],
                                  imageUrl: imageUrl ?? '',
                                  title: post['title']['rendered'],
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: imageUrl != null
                                        ? BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                              image: NetworkImage(imageUrl),
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        : null,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        post['title']['rendered'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Tap to view details',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text('No products available'),
                    )
              : Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
        ),
      ),
    );
  }
}
