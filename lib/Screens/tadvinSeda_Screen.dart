import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';

import '../constants.dart';

class TadvinSeda_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("خدمات تدوین صدا و صدا گذاری"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D8%B5%D8%AF%D8%A7%DA%AF%D8%B0%D8%A7%D8%B1%DB%8C.jpg"),
                text_style(title: "صدا"),
                Text(
                    "قطعا یکی از مهم ترین رکن ها در انتقال حس و درک مفاهیم، صدا است. این پدیده آنقدر مهم و حیاتی است که روزانه با افراد مختلفی از طریق آن ارتباط برقرار میکنیم. امروزه با گسترش چشمگیر تکنولوژی قطعا نیاز به صدای باکیفیت بیش از پیش احساس میشود و این امر جز با صداگذاری و تدوین حرفه ای انجام نمیپذیرد. در تیم نهال آی تی، جهت بهره برداری بهتر خدمات ما در حوزه ی تدوین صدا و صداگذاری ، کاربران میتوانند به راحتی با متخصصان مختلف در حوزه صداگذاری به صورت مشترک، مشاوره بگیرند."),
                text_style(title: "صدا گذاری و تدوین صدا چیست؟"),
                Text(
                    "صداگذاری و تدوین صدا یکی از ارکان اصلی ادیت در محتواهای دیجیتال می باشند. برای مثال شما در اکثر فیلم ها صداهای مختلفی را می شنوید که شاید در واقعیت این صداها وجود نداشته باشد و بعد از فیلمبرداری توسط مهندسین صدا آن را بر روی فیلم قرار داده باشند اگر بخواهیم یک نمونه از آن را به شما بگوییم می توانیم به صدای باران اشاره کنیم که در بسیاری از فیلم ها باران به صورت مصنوعی ساخته شده و صدای آن توسط مهندس صدا بر روی تصویر قرار داده می شود که به این عمل صداگذاری می گویند."),
                text_style(title: "موارد استفاده تدوین صدا"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/saxophonist-playing-saxophone-wearing-golden-glasses-2048x2048.png"),
                Text("""\nبرنامه های تلویزیونی
 
فیلم ها
 
مستند ها
 
انیمیشن
 
سخنرانی
 
تیزرهای تبلیغاتی
 
تولید محتوا
 
و …


"""),
                text_style(title: "تفاوت صداگذاری و تدوین صدا"),
                Text(
                    "در ابتدا بهتر است به مبحث صداگذاری بپردازیم که این روزها جایگاه بسیار خوبی در شبکه پخش خانگی پیدا کرده است، برای مثال شرکت هایی هستند که فیلم های زبان اصلی را دوبله می کنند که در همین کار عمل صداگذاری و تدوین صدا اعمال می شود برای مثال در ابتدا باید صدای خود فیلم حذف شده و صدای گوینده به زبان فارسی بر روی فیلم قرار داده شود به این عمل صداگذاری گفته می شود."
                    "حال قصد داریم به تدوین صدا بپردازیم در واقع شاید در قسمتی از کار نیاز باشد که شما مقداری از فیلم را سانسور کنید در نتیجه بعد از حذف شدن آن قسمت از فیلم باید آن قسمت از صدا که مربوط به بخش بریده شده فیلم است را کات کنید و مابقی صداها را به هم بچسبانید که به این کار تدوین صدا گفته میشود و در نهایت بهتر است بدانید که این دو موضوع با هم متفاوت هستند اما برای انجام یک کار حرفه ای به هر دوی آن ها نیاز است."),
                text_style(title: "نرم افزارهای حرفه ای ویرایش صدا"),
                Text(
                    "در ادامه به معرفی چند نرم افزار محبوب و حرفه ای تدوین صدا میپردازیم :"),
                text_style(title: "1 - نرم افزار سونی وگاس"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/kisspng-vegas-pro-portable-network-graphics-computer-icons-iconos-sony-vegas-9-pro-5b7b7f843fec75.0596849215348202282618-removebg-preview.png"),
                Text(
                    "شرکت سونی نه تنها در زمینه صنعت فیلم سازی دستی دارد، بلکه نرم افزاری را در زمینه میکس، مونتاژ و ویرایش فیلم تهیه کرده است که بسیار قدرتمند می باشد. هر چند این نرم افزار به سیستم بسیار قوی نیاز دارد و کمی پیچیده است."
                    "استفاده از نهایت کیفیت در صداها و تصاویر خروجی که نهایت لذت را برای ببینده به همراه دارد یکی از مهم ترین خصوصیاتی است که در Sony Vegas Pro به چشم می خورد. انواعی از افکت ها در این ابزار گنجانده شده اند تا کاربران حرفه ای به راحتی با کنار هم قرار دادن تصاویر و همین افکت ها به جذاب تر شدن کار خود کمک کنند."),
                text_style(title: "2 - نرم افزار cyberlink audio director"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/productIcon_v2_20200705203105080.png"),
                Text(
                    "این شرکت با ارائه نرم افزار های قدرتمند در زمینه تولید و ویرایش محتوا بسیار مورد استقبال کاربران قرار گرفته است. حال اینبار با ارائه یک نرم افزار قدرتمند دیگر در زمینه تدوین صدا نظر کاربران را به خود جلب کرده است. از ویژگی های این نرم افزار میتوان به موارد زیر اشاره کرد :"
                    """
               
                ویرایش فایل های صوتی با امکانات متعدد
                امکان رایت پروژه صوتی در سی دی
                پشتیبانی از فرمت های مختلف بخصوص فرمت VST
                استفاده از نهایت کیفیت در خروجی
                امکان گرفتن خروجی با فرمت ها و کیفیت های دلخواه
                و …"""),
                text_style(title: "3 - نرم افزار Adobe Audition"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/Adobe_Audition_CC_icon_2020.svg.png"),
                Text(
                    """   Adobe Audition یکی از بهترین نرم افزارهای رکورد آهنگ است که امکاناتی مثل waveform و نمایش چند آهنگ برای ترکیب، ویرایش و بازیابی محتوای صوتی را در اختیارتان می گذارد. این برنامه برای سرعت بخشیدن به روند تولید ویدئو و فایل صوتی طراحی شده است. از ویژگی های این نرم افزار میتوان به موارد زیر اشاره کرد :

می توانید کلیپ های آهنگتان رابه راحتی ضبط، ویرایش و ادغام کنید.

این برنامه به شما امکان می دهد تا محتواهای صوتی مختلف را برای تولید پادکست با هم ترکیب کنید.

پنل اصلی صدا با برنامه ادغام شده است تا بهترین افکت روی آهنگ شما قرار بگیرد.

می توانید کلیپ های آهنگ خودتان را در کنار ویژگی ضبط صدا استفاده کنید تا آهنگ حرفه ای تری بسازید.

از این پلتفرم می توان برای ایجاد پادکست های جذاب استفاده کرد.

"""),
                text_style(title: "خدمات صداگذاری و تدوین صدا"),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B3%D8%A7%D8%AE%D8%AA-%D8%AA%DB%8C%D8%B2%D8%B1-%D8%AA%D8%A8%D9%84%DB%8C%D8%BA%D8%A7%D8%AA%DB%8C-min.png"),
                Text(
                  "تهیه تیزر تبلیغاتی\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "\nبا گستردگی روزافزون مخاطبان شبکه مجازی یکی از بهترین تبلیغات در این بخش ساخت ویدئوهای ویژه کوتاه، برای نمایش در صفحات شبکه های اجتماعی و بستر های مختلف است."),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/4674029-scaled-transformed-min.png"),
                Text(
                  "خدمات نریشن",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "نریشن، هنر تبدیل متون مختلف به کلام تاثیرگذار است. در بسیاری از موارد مخاطبان ما علاقه ایی به خواندن متون از خود نشان نمیدهند و این امر ممکن است باعث شود بسیاری از مطالب مهم، از نظرشان پنهان بماند."),
                image_style(
                    imageUrl:
                        "https://nahalit.com/wp-content/uploads/2022/11/1398090309273659318951144-transformed-min.png"),
                Text(
                  "گویندگی و دوبله",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "درواقع گویندگی ،اثرگذاری یک موضوع را چندین برابر میکند و باعث میشود که متون به کلامی دلنشین ، اثرگذار و زیبا تبدیل شود. از هنر گویندگی در رادیو ، تلوزیون، فیلم، تئاتر، انیمیشن، تبلیغاتی، و … استفاده می شود ."),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D8%AA%D8%AF%D9%88%DB%8C%D9%86-%D8%B5%D8%AF%D8%A72-min.png"),
                Container(
                  color: Colors.lightBlueAccent.shade100,
                  child: Column(
                    children: [
                      Image.network(
                          "https://nahalit.com/wp-content/uploads/2022/11/frm-thbt-sfarsh-transformed-min.png"),
                      Text(
                          "جهت سفارش انواع خدمات صدا گذاری ، میتوانید به صورت رایگان ، با شماره 09927674217 تماس بگیرید و یا از طریق لینک زیر اقدام کنید."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Purchase_guide()));
                        },
                        child: Text(
                          "سفارش خدمات صدا گذاری",
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
