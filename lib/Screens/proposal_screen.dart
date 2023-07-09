import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';

import '../constants.dart';

class Proposal_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("تدوین پروپوزال "),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%AF%D9%88%DB%8C%D9%86-%D9%BE%D8%B1%D9%88%D9%BE%D9%88%D8%B2%D8%A7%D9%84.jpg"),
                text_style(title: "بیزینس پلن یا پروپوزال چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/images.jpg",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "سندی است نشان می‌دهد کسب‌وکار شما چیست، چگونه کار می‌کند و چگونه قرار است که موفق شود."
                    "بیزینس پلن (Business plan) یا طرح تجاری ، در واقع مکانیسمی است مکتوب که مشخص کننده نقشه راه (road map) کسب و کار شما برای تولید و فروش کالا یا خدمات مشخص است. نیازمند تحقیقات بازار (market research) است، نیازمند مدل تجاری (business model) است. نیازمند، آنالیز روند ها (trend analysis)  است، نیازمند برنامه ریزی بازاریابی (marketing planning) است. نیازمند تعیین اهداف بلند  مدت و تیم سازی (team building) و توسعه استراتژی (strategy development) است"),
                text_style(title: "چرا به بیزینس پلن نیاز داریم؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/building.jpg",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "فرض کنید یک زمین 400 متری دارید و می‌خواهید یک ویلا در آن بسازید. چه کار می‌کنید؟"
                    "همینطوری می‌روید وسط زمین و شروع می‌کنید به چیدن آجرها روی یکدیگر؟"
                    "یا نه، ابتدا نقشۀ ساختمانی که می‌خواهید بسازید را آماده می‌کنید؟\n"
                    "بعید می‌دانم کسی جزو دستۀ اول باشد؛ به احتمال 99%، همۀ ما ابتدا طرح و نقشه را تهیه می‌کنیم، هزینه‌ها را حساب می‌کنیم، مصالح تهیه می‌کنیم، نیرو استخدام می‌کنیم و بعد می‌رویم سراغ ساختن ویلا!"),
                text_style(title: "چه کسانی به بیزینس پلن نیاز دارند؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/planing.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "موشن‌ها از قاعده‌ای کلی در متحرک‌سازی تصویر و صداگذاری استفاده می‌کنند، اما انواع موشن گرافیک هم وجود دارد که دست شما را برای سفارش موشن گرافیک موردنظرتان باز می‌گذارد. از رایج‌ترین انواع موشن گرافیک از منظر ایده‌پردازی و اجرا می‌توان به این موارد اشاره کرد:\n"
                    "اگر یک کسب‌وکار کوچک برای خودتان دارید که نیازی به سرمایه‌گذار یا توسعه آن‌چنانی ندارد، نیازی به نوشتن طرح کسب و کار نیست.\n"
                    "مثلاً فرض کنید که یک سایت شخصی دارید و از طریق آن پروژه‌های سئو می‌گیرید؛ اگر برنامه‌ای برای گسترش کارتان ندارید و به همین شیوه راضی هستید، نیازی به نوشتن بیزینس پلن ندارید.\n"
                    "اما در 2 حالت است که شما حتماً به بیزینس پلن نیاز پیدا می‌کنید:\n"
                    "•  راه‌اندازی استارتاپ\n"
                    "•  توسعه کسب‌وکار\n"
                    "پیشنهاد می‌کنیم که حتماً سری به صفحه «آموزش راه‌اندازی کسب‌وکار» بزنید و حالا که در اولین قدم‌های ساخت کسب‌وکارتان هستید، از آموزش‌های حذاب و کاربردی این صفحه استفاده کنید.\n"),
                text_style(
                    title: "یک بیزینس پلن از چه بخش‌هایی تشکیل شده است؟"),
                Text(
                    "تا الان طرح‌های مختلفی برای بیزینس پلن ارائه شده است که در بعضی بخش‌ها با هم تفاوت دارند؛ اما کامل‌ترین و بهترین طرح از نظر ما، باید شامل بخش‌های زیر باشد:"
                    "\nیک جلد مرتبط"
                    "\n\nفهرست مطالب"
                    """\n\nمعرفی اعضای اصلی (هیات مدیره)\n
چکیده

معرفی کسب‌وکار شما

شرح مشکل

شرح راه حل

اهداف بیزینس

اهداف کوتاه‌مدت

اهداف بلندمدت

تحقیقات بازار

بازار هدف

آنالیز مشتریان

آنالیز رقبا

معرفی آمیخته بازاریابی

محصول

قیمت‌گذاری

روش توزیع

برنامه ترویج و تبلیغات

منابع انسانی

صورت مالی

همانطور که پیداست، در بیزینس پلن‌تان، قرار است که درباره این موارد، صحبت کنید. حالا دیگر با خودتان است که این اطلاعات را در فایل Word سروسامان دهید، یا در PowerPoint! در هر صورت دقت کنید که طرح کسب‌وکارتان خوانا، جذاب و دور از حاشیه‌های اضافی باشد.

"""),
                Container(
                  color: Colors.lightBlueAccent.shade100,
                  child: Column(
                    children: [
                      Image.network(
                          "https://nahalit.com/wp-content/uploads/2022/11/frm-thbt-sfarsh-transformed-min.png"),
                      Text(
                          "جهت سفارش انواع پروژه تدوین پروپوزال ، میتوانید به صورت رایگان ، با شماره 09927674217 تماس بگیرید و یا از طریق لینک زیر اقدام کنید."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Purchase_guide()));
                        },
                        child: Text(
                          "سفارش پروژه تدوین پروپوزال",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
