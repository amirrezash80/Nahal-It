import 'package:flutter/material.dart';

import '../gradient.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("تماس با ما"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          MyGradient(),
          SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "تماس با نهال آیتی",
                            style: TextStyle(fontSize: size.width * 0.06),
                          ),
                          Container(
                            height: 3,
                            width: size.width * 0.5,
                            color: Colors.green,
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: size.width * 0.05,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      "کاربر گرامی، لطفاً در صورت وجود هرگونه سوال یا ابهامی، پیشنهاد و یا هرگونه پیامی از بخش پشتیبانی سایت اقدام نمایید. پشتیبانان و تیم ما هر لحظه از شبانه روز آماده پاسخگویی به شما کاربران نهال آیتی می‌باشند. موقعیت ما را روی نقشه می‌توانید پیدا کنید:",
                    ),
                    SizedBox(height: size.height * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "نهال آیتی در شبکه‌های اجتماعی",
                          style: TextStyle(fontSize: size.width * 0.06),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.theaters,
                                color: Colors.green,
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.video_collection_rounded,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.telegram,
                                color: Colors.blue,
                              ),
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.photo_camera_sharp,
                                color: Colors.purpleAccent.shade700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "با عضویت در شبکه‌های اجتماعی نهال آیتی از آخرین تخفیف‌ها، جشنواره‌ها و اطلاعیه‌های فروشگاه با خبر خواهید شد.",
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      "تماس با نهال آیتی",
                      style: TextStyle(fontSize: size.width * 0.06),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 10.0),
                        Text("021-8886794"),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 10.0),
                        Text("021-8886794"),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(width: 10.0),
                        Text("admin@nahalit.com"),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      "دفتر مرکزی: تهران - میدان فردوسی - خیابان ایرانشهر - بین سمیه و طالقانی - مجتمع تجاری میلاد - طبقه ۵ -واحد ۹",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
