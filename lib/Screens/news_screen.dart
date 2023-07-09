import 'package:flutter/material.dart';
import 'package:nahal_it/bottomNavigationBar.dart';
import 'package:nahal_it/fetch_catagories.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  final posts = <dynamic>[].obs;
  final isLoading = true.obs;
  bool isFetched = false;

  @override
  void onInit() {
    super.onInit();
    fetchPost();
  }

  void fetchPost() async {
    if (!isFetched) {
      try {
        // Fetch data from the API
        var data = await fetchCatagories();

        // Set the fetched data to the posts list
        posts.value = data;

        // Set isLoading to false once data is fetched
        isLoading.value = false;

        isFetched = true; // Set the flag to indicate data is fetched
      } catch (e) {
        // Handle error if data fetching fails
        print('Error fetching data: $e');
      }
    }
  }
}



class NewsScreen extends StatelessWidget {
  final NewsController blogController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('اخبار'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.015),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Obx(
                () => blogController.isLoading.value
                ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            )
                : ListView.builder(
              itemCount: blogController.posts.length,
              itemBuilder: (context, index) {
                var post = blogController.posts[index];
                var yoastHeadJson = post['yoast_head_json'];
                var ogImage =
                yoastHeadJson != null ? yoastHeadJson['og_image'] : null;
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
                      Container(
                        height: size.height * 0.05,
                        color: Colors.green,
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
                                    builder: (context) => BlogContentScreen(
                                      content:
                                      blogController.posts[index]["content"]["rendered"],
                                      imageUrl: imageUrl ?? '',
                                      title: post['title']['rendered'],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "   توضیحات  بیشتر ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),

      bottomNavigationBar: Convex(),
    );
  }
}

class BlogContentScreen extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  const BlogContentScreen(
      {required this.content, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(title),
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
                        padding: HtmlPaddings.only(right: 20)
                    ),
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
