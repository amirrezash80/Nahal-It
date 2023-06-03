import 'package:flutter/material.dart';
import '../fetch_catagories.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<dynamic> posts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCatagories().then((data) {
      setState(() {
        posts = data;
        isLoading = false; // Set isLoading to false once data is fetched
      });
    });
  }

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
          child: isLoading
              ? Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ), // Show a loading indicator
          )
              : ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              var post = posts[index];
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
                                    content: posts[index]["content"]["rendered"],
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
            padding: EdgeInsets.all(size.height*0.015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                imageUrl.isNotEmpty ? Image.network(imageUrl , fit: BoxFit.fill,) : Container(), // Display the image if imageUrl is not empty
                RichText(
                  textAlign: TextAlign.justify, // Align the overall text to justify
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: content,
                        style: TextStyle(
                          height: 2,
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
