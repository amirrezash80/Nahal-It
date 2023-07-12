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
                      """نهال آیتی به عنوان جامع‌ترین پایگاه ارائه‌دهنده خدمات دنیای دیجیتال و آی‌تی، به منظور ارائه محصولات با کیفیت، پشتیبانی قدرتمند و اشتغال‌زایی در تمام نقاط ایران با شعار تولید، پشتیبانی و مانع زدائی در دنیای دیجیتال در سال ۱۴۰۱ شروع به کار کرد.

تیم نهال آیتی با تکیه بر اشتغال‌زایی و جذب نیروی کار جوان در راستای توسعه، پیشرفت و شکوفایی کشور، فعالیت خود را آغاز کرده و از اقصی نقاط کشور اقدام به جذب نیروی جوان، با انگیزه و متخصص مینماید.
        
ما در نهال آیتی به منظور تسهیل دسترسی به غنی‌ترین منابع دنیای فناوری اطلاعات در حوزه‌هایی نظیر قالب سایت (فروشگاهی، شخصی، شرکتی، خبری و چندمنظوره و غیره)، اپلیکیشن موبایل (مناسب سیستم عامل‌های اندروید و iOS)، گرافیک (طراحی انیمیشن، عکاسی، بنر و تیزر تبلیغاتی، طراحی لوگو و کارت ویزیت و غیره)، خدمات شبکه‌های اجتماعی (افزایش لایک و فالوور و نظرات، ربات، خدمات لینکدین، بازاریابی هوشمند و غیره)، خدمات وب (سئو وبسایت، تولید محتوا و بازدید سایت و غیره) به صورت پکیج و یا جداگانه آماده ارائه خدمات به مشتریان عزیز می‌باشد.

صاحبان مشاغل در زمینه‌های مختلف با استفاده از خدمات و ابزارهای ارائه شده توسط تیم نهال آیتی می‌توانند کیفیت و بهره‌وری کسب و کار خود را ارتقاء دهند و همچنین با پشتیبانی کامل تیم ما همراه باشند.

تیم نهال آیتی اولین پلتفرم فناوری اطلاعات و آی‌تی به صورت اقساطی در ایران می‌باشد.
""",
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
                              Text("شهراد ساعدی"),
                              Text("سعید محمدی"),
                              Text("ملیکا"),
                              Text("ملیکا ملماسی"),
                              Text("نیما خواجه پور"),
                              Text("امیرحسین امین نگارش"),
                              Text("حمیدرضا زنگویی"),
                              Text("محمد امیر احمدی"),
                              Text("مهدی میرزا خانی"),
                              Text("امیر رضا شکاری"),
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
                              Text("توسعه دهنده فرانت اند"),
                              Text("توسعه دهنده اندروید"),
                              Text("توسعه دهنده اندروید"),
                              Text("سرپرست تیم اندروید"),
                              Text("توسعه دهنده فرانت اند"),
                              Text("برنامه نویس React"),
                              Text("توسعه دهنده فرانت اند"),
                              Text("توسعه دهنده فرانت اند"),
                              Text("توسعه دهنده فرانت اند"),
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
