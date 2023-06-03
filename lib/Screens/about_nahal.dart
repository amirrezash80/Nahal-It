import 'package:flutter/material.dart';
import 'package:nahal_it/gradient.dart';

class AboutNahal extends StatelessWidget {
  const AboutNahal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("درباره ‌ی نهال"),
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
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Text(
                            "تیم نهال آیتی",
                            style: TextStyle(fontSize: size.width * 0.06),
                          ),
                          Container(
                            height: 3,
                            width: size.width * 0.5,
                            color: Colors.green,
                          ),
                          Text(
                            "Nahal it Team",
                            style: TextStyle(
                                fontSize: size.width * 0.05, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                          "تیم نهال آیتی اولین پلتفرم فناوری اطلاعات و آی تی به صورت اقساطی در ایران می باشد."),
                    ),
                    Column(
                      children: [
                        Text(
                          "اعضای رسمی نهال آیتی",
                          style: TextStyle(fontSize: size.width * 0.06),
                        ),
                        Text(
                          "Official members of Nahal IT",
                          style: TextStyle(
                              fontSize: size.width * 0.05, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.02,),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("سید محمد حسین امام "),
                              Text("مهدی دومانلو "),
                              Text("امیرحسین ثقفی "),
                              Text("امیرحسین رفیعی "),
                              Text("علیرضا بابامرادی "),
                              Text("سید محمد فراهانی "),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(" توسعه دهنده فرانت اند"),
                              Text(" مدیریت نهال آی تی"),
                              Text(" توسعه دهنده فرانت اند"),
                              Text(" توسعه دهنده فرانت اند"),
                              Text(" کارشناس تولید محتوا"),
                              Text(" توسعه دهنده لاراول"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.03,),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "حوزه نهال آیتی",
                            style: TextStyle(fontSize: size.width * 0.06),
                          ),
                          Text("برترین مارکت ایران در حوزه IT"),
                          Text(
                              "تیم نهال آیتی با تکیه بر اشتغال زایی و جذب نیروی کار جوان در راستای توسعه پیشرفت و شکوفایی کشور فعالیت خود را آغاز کرده و از اقصی نقاط کشور اقدام به جذب نیروی جوان ، با انگیزه و متخصص مینماید ."),
                        ],
                      ),
                    )
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
