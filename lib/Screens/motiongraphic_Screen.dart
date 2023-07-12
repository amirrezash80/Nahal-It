import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';

import '../constants.dart';

class MotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("خدمات موشن گرافی"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D9%85%D9%88%D8%B4%D9%86-%DA%AF%D8%B1%D8%A7%D9%81%DB%8C.jpg"),
                text_style(title: "موشن گرافیک یا موشن گرافی چیست؟"),
                Text(
                    "متحرک سازی تصاویر و صداگذاری روی آنها را موشن گرافیک می گویند. به عبارت دیگر وکتورهای تصاویر انیمیشنی را با نرم افزارهای گرافیکی براساس سناریو خاص، متحرک سازی انجام می دهند و سپس صداگذاری توسط گوینده روی موشن گرافیک انجام می شود تا مفاهیم بصورت کامل منتقل شود."),
                text_style(title: "خدمات موشن گرافیک:"),
                Text(
                    "تیم نهال آی تیبا به کارگیری بیش از 9000 گرافیست از سراسر کشور، برگزاری آزمون های آنلاین گرافیک و موشن گرافیک برای اولین بار در ایران، دیتا ماینینگ و تیم سازی در حوزه گرافیک و مدیریتی ویژه، خدمات موشن گرافیک را با کمترین هزینه ممکن برایتان مهیا نموده است."),
                text_style(title: "انواع موشن گرافیک و کاربردی آنها"),
                Text(
                    "موشن‌ها از قاعده‌ای کلی در متحرک‌سازی تصویر و صداگذاری استفاده می‌کنند، اما انواع موشن گرافیک هم وجود دارد که دست شما را برای سفارش موشن گرافیک موردنظرتان باز می‌گذارد. از رایج‌ترین انواع موشن گرافیک از منظر ایده‌پردازی و اجرا می‌توان به این موارد اشاره کرد:\n"
                    "•  موشن‌گرافیک برندینگ\n"
                    "•  موشن‌گرافیک توضیحی\n"
                    "•  موشن‌گرافیک آموزشی\n"
                    "•  موشن‌گرافیک واقعی\n"
                    "•  استاپ‌موشن\n"
                    "•  اینفوموشن\n"),
                text_style(title: "کاربردهای موشن گرافیک:"),
                Text(
                    "وقتی بخواهید کلیپی بسازید مطمئنا به دوربین، نورپردازی، صدابرداری و بازیگر سپس تدوین ویدئو نیاز دارید. ولی در موشن گرافیک تقریباً فقط تدوین و صدا گذاری دارید و بقیه نقش ها را کامپیوتر ایفا می کند. بنابراین منطقی هست که هزینه موشن گرافیک پایین تر باشد. از طرفی موشن گرافیک بسیار جذابتر می باشد. از کاربردهای موشن گرافیک می توان ساخت تیزر تبلیغاتی، انیمیشن های دوبعدی، معرفی محصول یا خدمات، ایده های تبلیغاتی و برنامه های آموزشی و… را نام برد."),
                text_style(title: "انواع موشن گرافیک"),
                text_style(title: "1. موشن گرافیک:"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/2902191-removebg-preview-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "عمده ترین موشن گرافیک هایی که می بینید و استفاده می شود این دسته می باشد. در این نوع موشن گرافیک ها متحرک سازی تصاویر و وکتور انجام می شود و سپس صداگذاری انجام می گیرد. مطمئنا چون صدا دارد جذابیت بیشتری برای مخاطب دارد و انتقال مفاهیم بهتر انجام می شود."
                    "هرچند اصطلاح موشن گرافیک برای همه گرافیک‌های متحرک شامل تصاویر و ویدئو به کار می‌رود، اما به طور خاص در موشن گرافیک ، به جای تصاویر واقعی، از وکتور یا نقاشی‌هایی استفاده می‌شود که به کمک نرم‌افزارهایی مانند ایلاستریتور تهیه و متحرک سازی می‌شوند. همان‌طور که پیش‌تر اشاره شد این تصاویر متحرک یک سناریو ویژه دارند و پیام کلی آن توسط یک گوینده بر روی تصاویر بیان می‌شود."),
                text_style(title: "2. ویدئو موشن:"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/13038-removebg-preview-1.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "این دسته از موشن گرافیک ها تلفیقی از فیلمبرداری واقعی و گرافیک است و قسمت هایی از فیلم که قابلیت فیلمبرداری واقعی ندارند با گرافیک اجرا می شوند."
                    "در حال حاضر هيچ تعريف مشخصي براي موشن گرافيك در دنيا وجود ندارد، با اين حال تقريبا به محتواي كه در آن از تصاوير ساخته شده استفاده شده باشد موشن گرافيک مي گويند. دقت كنيد كه موشن گرافيك حتي شامل محتواهايي مي شود كه علاوه بر تصاوير ساختگي، تصاوير واقعي هم دارند. البته كلمه موشن گرافيك تقريبا به زمان اختراع كامپيوتر ها بر مي گردد كه نشان مي دهد اين تصاوير ساختگي مختص كامپيوتر هستند كه اين يعني با فيلم گرفتن از دفتر نقاشي خود ويدئو موشن نساخته ايد!"),
                text_style(title: "3. استاپ موشن:"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/4-removebg-preview-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "به طور کلی همه انیمیشن‌ها از قرار گرفتن چند تصویر به صورت پشت سر هم و پی در پی، ساخته می‌شوند. در انیمیشن‌های دو بعدی، تصاویر نقاشی شده با دست یا کامپیوتر، فریم به فریم نشان داده می‌شوند و در انیمیشن‌های سه بعدی، مدل‌های کامپیوتری به آهستگی حرکت کرده و با گرفتن عکس‌های پشت سر هم از آن‌ها، یک تصویر متحرک تشکیل می‌شود."
                    "در ساخت انیمیشن به روش استاپ موشن یا Stop Motion ، به جای استفاده از نقاشی، از عروسک‌ها و مدل‌های واقعی استفاده می‌شود. این کار به این صورت انجام می‌شود که عروسک را کمی حرکت می‌دهند، سپس از آن عکس گرفته می‌شود و آنقدر این عمل را تکرار می‌کنند تا حرکت تصویر را به بیننده القا کنند."),
                text_style(title: "4. اینفو موشن:"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/5-removebg-preview.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "ابتدا اینفوگرافیک رسم می شود و حالا حرکت را به گونه ای وارد اینفوگرافیک می کنیم تا مراحل را نشان دهیم."
                    "یکی از مباحث مهم گرافیک، طراحی اینفوگرافیک یا Infographic Design است. در دنیای امروز که با سرعت زیادی رو به جلو حرکت می‌کند، روزانه آمار و اطلاعات زیادی در مورد موضوعات مختلف، به وجود می‌آید. از طرف دیگر مشغله خوانندگان و کاربران به قدری زیاد است که فرصت مطالعه دقیق این آمار را ندارند؛ به همین دلیل طراحان گرافیک با استفاده از تخصص و خلاقیت خود توانسته‌اند تا با طراحی اینفوگرافیک، این اطلاعات و آمار را به شیوه‌ای زیبا و جذاب به نمایش درآورند. بسیاری از افراد و سخنوران از اینفوگرافیک، در کنفرانس‌ها، ارائه‌های علمی، تبلیغات شرکت‌ها و… استفاده می‌کنند."),
                text_style(title: "مراحل تولید موشن گرافیک:"),
                Text(
                    "1.  ابتدا سناریو یا استوری برد برای شما نگارش می شود و از شما تایید گرفته می شود.\n"
                    "2. سپس کاراکترها و لوکیشن ها به شما نشان داده می شود تا تایید نمایید.\n"
                    "3. متحرک سازی براساس سناریو یا استوری بورد شما انجام می شود.\n"
                    "4. صداگذاری بر اساس سناریو نهایی انجام می شود.\n"
                    ""),
                text_style(title: "مزیت های موشن گرافیک:"),
                Text("1. انتقال مفاهیم به بهترین نحو ممکن.\n"
                    "2. مخاطب را تحت تأثیر قرار می دهد.\n"
                    "3. وارد بازاریابی ویدئویی می شوید.\n"
                    "4. هزینه بسیار کمتر از تیزرهای واقعی با فیلمبرداریست.\n"
                    "5. در بازاریابی شبکه های اجتماعی بسیار به شما کمک می کند.\n"
                    "6. کیفیت آموزش را بسیار بالا می برد.\n"),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D9%85%D9%88%D8%B4%D9%862.png"),
                Container(
                  color: Colors.lightBlueAccent.shade100,
                  child: Column(
                    children: [
                      Image.network(
                          "https://nahalit.com/wp-content/uploads/2022/11/frm-thbt-sfarsh-transformed-min.png"),
                      Text(
                          "جهت سفارش انواع پروژه طراحی موشن گرافیک ، میتوانید به صورت رایگان ، با شماره 09927674217 تماس بگیرید و یا از طریق لینک زیر اقدام کنید."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Purchase_guide()));
                        },
                        child: Text(
                          "سفارش پروژه موشن گرافیک",
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
