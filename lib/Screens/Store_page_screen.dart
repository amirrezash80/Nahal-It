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
  final textFilter = Get.find<SearchController>();
  TextEditingController searchController = TextEditingController();

  List<dynamic> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    if (!fetchproductController.isDataLoaded) {
      try {
        final data = await fetchProducts();
        fetchproductController.products = data;
        fetchproductController.isDataLoaded = true;
        setState(() {
          filteredProducts =
              updateFilteredProducts(fetchproductController.products!);
        });
      } catch (error) {
        print('Error fetching products: $error');
      }
    } else {
      setState(() {
        filteredProducts =
            updateFilteredProducts(fetchproductController.products!);
      });
    }
  }

  List<dynamic> updateFilteredProducts(List<dynamic> products) {
    if (textFilter.textFilter.isNotEmpty) {
      return products.where((product) {
        var title = product['title']['rendered'].toLowerCase();
        var filter = textFilter.textFilter.toLowerCase();
        return title.contains(filter) || title.startsWith(filter);
      }).toList();
    } else {
      return products;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textFilter.textFilter = '';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text('محصولات'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.015),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: fetchproductController.isDataLoaded
              ? filteredProducts.isNotEmpty
                  ? GridView.builder(
                      padding: EdgeInsets.all(10.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 20.0,
                      ),
                      itemCount: filteredProducts.length - 1,
                      itemBuilder: (context, index) {
                        var post = filteredProducts[index + 1];
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
