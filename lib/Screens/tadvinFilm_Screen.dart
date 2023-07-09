import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';

import '../constants.dart';

class Tadvin_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("خدمات پریمیر و تدوین فیلم"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D9%81%DB%8C%D9%84%D9%85.jpg"),
                text_style(title: "تدوین ویدیو"),
                Text(
                    "یکی از محتواهای اثرگذار در دنیای امروز ویدیوها هستند. وقتی قرار باشد که اثری قدرتمند به جا بگذارید، هیچ‌ چیز به اندازه تحرک و صدا نیست. صدا و تصویر اثری عمیق بر مخاطب می‌گذارد و می‌تواند به خوبی پیام شما را انتقال دهد."
                    "فرایند برش، حذف موارد ناخواسته، اصلاح رنگ، تقویت صدا و یکپارچه سازی برداشت‌ها را تدوین و ویرایش می‌نامند. برای این کار باید از برنامه‌ای مناسب استفاده کرد و قابلیت‌های برنامه را شناخت. از جمله بسترهای محبوب برای تدوین فیلم شامل ادوبی پریمیر، فاینال کات پرو، سونی وگاس، آی مووی و غیره هستند. نرم افزار تدوین باید نیازهای مربوط به محتوای ویدئویی را تأمین کرده و کار تهیه فیلم را طبق استانداردهای سفارش دهنده محتوا پیش ببرد. تدوین فیلم، تکنیک‌های متنوعی دارد که داشتن تخصص در این حوزه از طریق منابع مجازی مثل کتابهای الکترونیک و طی کردن دوره‌های مجازی و حضوری آموزش تدوین فیلم، میسر است."
                    "در تیم نهال آی تی ، جهت بهره برداری بهتر خدمات پریمیر و تدوین فیلم ، کاربران میتوانند به راحتی با متخصصان مختلف در حوزه تدوین فیلم و نرم افزار پریمیر به صورت مشترک، مشاوره بگیرند."),
                text_style(title: "فواید تدوین ویدیوی حرفه ایی :"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/youtube-creator-awards-2048x1365.png"),
                Text(""" موجب افزایش نرخ کلیک می شود
                
در طول نمایش ویدئو باعث ایجاد تمرکز بیشتر می شود

با موزیک گذاری می تواند احساسات بیننده را تحت تاثیر قرار دهد

نرخ تعامل را بالا ببرد

اطلاعات جانبی به همراه ویدئو به بیننده بدهد

تبلیغات را تدوین می توان به ویدئو اضافه کرد

تدوین ویدیو اثر مستقیم بر میزان دیدن شدن ویدئوی شما دارد. تدوین ویدیو مثل جلد کتاب است، چیزی که شما در ابتدای کار جذب یک کتاب می کند، صرفا نام کتاب و طراحی روی جلد کتاب است. سپس شما آن کتاب را انتخاب میکنید تا از سرفصل های آن آگاه شوید. همان طوری که کتاب با طرح جلد زیباتر، احتمال فروشش بالا میرود، می توانیم بگوییم ویدئوها با تدوین ویدیوی حرفه ایی تر امکان دیدن شدن بیشتری پیدا می کنند.
سفارش دهندگان محتوای ویدئویی به دنبال تیم تولید محتوایی هستند که تدوینگر فیلم هم جزئی از این تیم است. این فرد به جنبه‌های مختلف ویرایش آشنایی دارد و ابزارهای مناسب را می شناسد. تنها ابزارهای رایگان محدودی با امکانات محدود برای تدوین فیلم در فضای آنلاین وجود دارد.
اما تدوینگران و سازندگان فیلم به نرم افزارهای تخصصی و پولی در این حوزه دسترسی دارند چون این کار را به عنوان یک شغل انتخاب کرده و سخت افزارها و نرم افزارهای مناسب این حرفه را تهیه نموده‌اند


"""),
                text_style(title: "مخاطبین تدوین ویدیو :"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/man-watching-online-video-2048x2048.png"),
                Text("""تدوین ویدیو برای یوتویوبرها
                
تدوین ویدیو برای مدرسین

تدوین ویدیو برای بلاگرها

تدوین ویدیو برای تولید کننده های محتوا

تدوین ویدیو برای مستند سازان و فیلم سازان

تدوین ویدیو برای محتوای اینستاگرام

تدوین ویدیو برای تیزر سازی

تدوین ویدیو برای هدف شما

"""),
                text_style(title: "خدمات تدوین ویدیو"),
                Text(
                  "تدوین ویدیو یوتیوب\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/movie.png"),
                Text(
                    "\nامروزه یوتیوب یکی از بزرگترین بسترهای تولید محتوا در جهان است که بسیاری از کاربران همه روزه با آن مشغول به فعالیت هستند. تولید محتوای باکیفیت نقش مهمی در جذب کاربران دارد. با نهال آی تی ویدیو متفاوت برای خود بسازید"),
                Text(
                  "تدوین تیزر تبلیغاتی",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/sharing-and-video-marketing-concept-with-loud-speaker-image.png"),
                Text(
                    "تیزر های تبلیغاتی نقش بسیار مهمی در تبلیغ محصولات و خدمات دارند به طوری که یک تیزر تبلیغاتی با کیفیت میتواند مشتریان بسیاری را با خود به همراه آورد"),
                Text(
                  "تدوین ویدیو انگیزشی",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/concept-of-man-got-success-and-achieving-goal.png"),
                Text(
                    "یک ویدیو انگیزشی مناسب میتواند شما را در قدم برداشتن در مسیر زندگی تان هدایت کند. با نهال آی تی فیلم های انگیزشی تان را متفاوت بسازید"),
                Text(
                  "تدوین سخنرانی",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/speech.png"),
                Text(
                    "تدوین ویدیوهای سخنرانی تاثیر بسیار مهمی در انتشار هر چه بیشتر آن ها در فضای مجازی دارد. تدوین انواع ویدیوهای سخنرانی، مداحی و مذهبی توسط تیم حرفه ای نهال آی تی انجام میگیرد"),
                Text(
                  "تدیون تولید محتوا",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/facebook-advertisement-tutorial.png"),
                Text(
                    "در حال حاضر تولید محتوا یکی مشاغل پر درامد در دنیای تکنولوژی است، طبیعتا با افزایش کاربران فعال در این عرصه رقابت هم بیشتر میشود. با نهال آی تی همیشه خود را متفاوت نگه دارید"),
                Text(
                  "تدوین برند",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/announcement.png"),
                Text(
                    "برند یک سازمان انعکاس کننده تمامی خدمات و محصولات آن سازمان است. داشتن یک ویدیو برند معرفی میتواند نقش مهمی در جذب مشتریان شما داشته باشد"),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D8%AA%D8%AF%D9%88%DB%8C%D9%86-%D9%81%DB%8C%D9%84%D9%852-min.png"),
                Container(
                  color: Colors.lightBlueAccent.shade100,
                  child: Column(
                    children: [
                      Image.network(
                          "https://nahalit.com/wp-content/uploads/2022/11/frm-thbt-sfarsh-transformed-min.png"),
                      Text(
                          "جهت سفارش انواع پروژه پریمیر و تدوین فیلم ، میتوانید به صورت رایگان ، با شماره 09927674217 تماس بگیرید و یا از طریق لینک زیر اقدام کنید."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Purchase_guide()));
                        },
                        child: Text(
                          "سفارش پروژه پریمر و تدوین فیلم",
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
