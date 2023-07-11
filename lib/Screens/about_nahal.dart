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
        title: Text("درباره‌ی نهال"),
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
                            "تیم نهال آیتی",
                            style: TextStyle(fontSize: size.width * 0.06),
                          ),
                          Container(
                            height: 3,
                            width: size.width * 0.5,
                            color: Colors.green,
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "Nahal IT Team",
                            style: TextStyle(
                              fontSize: size.width * 0.05,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      "تیم نهال آیتی اولین پلتفرم فناوری اطلاعات و آی‌تی به صورت اقساطی در ایران می‌باشد.",
                    ),
                    SizedBox(height: size.height * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "اعضای رسمی نهال آیتی",
                          style: TextStyle(fontSize: size.width * 0.06),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Official members of Nahal IT",
                          style: TextStyle(
                            fontSize: size.width * 0.05,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("سید محمد حسین امام"),
                              Text("مهدی دومانلو"),
                              Text("امیرحسین ثقفی"),
                              Text("امیرحسین رفیعی"),
                              Text("علیرضا بابامرادی"),
                              Text("سید محمد فراهانی"),
                            ],
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Container(
                          width: size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("توسعه دهنده فرانت اند"),
                              Text("مدیریت نهال آی تی"),
                              Text("توسعه دهنده فرانت اند"),
                              Text("توسعه دهنده فرانت اند"),
                              Text("کارشناس تولید محتوا"),
                              Text("توسعه دهنده لاراول"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "حوزه نهال آیتی",
                            style: TextStyle(fontSize: size.width * 0.06),
                          ),
                          SizedBox(height: 10.0),
                          Text("برترین مارکت ایران در حوزه IT"),
                          Text(
                            "تیم نهال آیتی با تکیه بر اشتغال‌زایی و جذب نیروی کار جوان در راستای توسعه، پیشرفت، و شکوفایی کشور فعالیت خود را آغاز کرده و از اقصی نقاط کشور اقدام به جذب نیروی جوان، با انگیزه و متخصص می‌نماید.",
                          ),
                        ],
                      ),
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
