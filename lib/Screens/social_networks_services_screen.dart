import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/purchese_guide.dart';

class text_style extends StatelessWidget {
  final String title;

  const text_style({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Text(
      title,
      style: TextStyle(
          fontSize: size.width * 0.05,
          fontWeight: FontWeight.bold,
          color: Colors.green.shade800),
    );
  }
}

class SocialServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("خدمات شبکه های اجتماعی"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D8%B4%D8%A8%DA%A9%D9%87-%D9%87%D8%A7%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C.jpg"),
                text_style(title: "خدمات شبکه های اجتماعی"),
                Text(
                    "امروزه داشتن یک وب سایت به تنهایی پاسخ گوی بازار رقابتی نیست، بازاریابی رسانه‌ های اجتماعی یکی از ابزارهای ارزشمند برای ایجاد یک فضا بین جامعه و درگیر شدن با مشتریان خود است."
                    "به عنوان یکی از روش‌ های مشتری مداری تعامل با مشتریان و مخاطبان از طریق خدمات شبکه‌ های اجتماعی است، اینکه مشتری شما حس ملموس تری از نوع کسب کار شما داشته باشد و شما را بیشتر در کنار خود ببینید تا در روبرو، حس بهتری به وی منتقل خواهد شد"
                    "سرمایه گذاری و تمرکز روی این بخش به دلایلی مانند: مخاطب پسند بودن، پر استفاده بودن، بازدید بالا، حس رقابتی و از همه مهمتر تاثیر بر سئو سایت شما، پیشنهاد می شود، ما می‌ توانیم هر جنبه‌ ای از حضور رسانه های اجتماعی شما را مدیریت، بهینه سازی و رشد دهیم، بنابراین می‌ توانید بر کسب و کار خود متمرکز شوید."
                    "اگر قصد دارید رشد سریع تری را در شبکه های اجتماعی مانند اینستاگرام، لینکدین، تلگرام، یوتیوب، آپارات و … تجربه کنید، می توانید از خدمات شبکه های اجتماعی تیم نهال آی تی استفاده کنید."
                    "تیم نهال آی تی ، بستری مناسب برای افزایش بازدید، لایک، فالوور و سایر خدمات شبکه های اجتماعی فراهم آورده است. پس از ایجاد کمپین، اکانت و یا پست شما برای بسیاری از کاربران ارسال شده و خدمت موردنظر بلافاصله برای شما اعمال می شود."),
                Text(
                  "اهمیت شبکه های اجتماعی برای کسب و کارتان :",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("1- بررسی فعالیت رقبا و سنجش فعالیت خود با آن ها"
                    "2- پیشرفت بازار و بدست آوردن مشتری ‌های هدف"
                    "3- توسعه ارتباط با مشتری و افزایش سرعت در پاسخگویی"
                    "4- توسعه بازاریابی و برندسازی در شبکه‌ های مجازی"
                    "5- برنامه‌ ریزی برای اهداف کوتاه و بلندمدت شرکت و سازمان"
                    "6- نگهداری مشتری ‌های فعلی و بیشتر شدن مشتری ‌ها"
                    "7- آمارگیری و بررسی میزان پیشرفت"),
                text_style(title: "اینستاگرام چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/social-marketer-banner-hurn-and-social-icons-around-desk.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "اینستاگرام (Instagram) سرویسی برای اشتراک تصاویر و برقراری تعاملات اجتماعی است. کاربران عکس یا ویدئوهای کوتاه و یا بلند می‌گیرند و با دنبال‌کنندگان (Followers) خود به اشتراک می‌ گذارند."
                    "برخلاف فیس بوک و توییتر که بیش تر بر پایه محتوای متنی بنا شده اند، اینستاگرام با اولویت عکس و فیلم و محتوای تصویری فعالیت می‌ کند. ولی با این حال امکان قرار دادن محتوای متنی نیز در قسمت کپشن پست ها و هچنین استوری ها وجود دارد."
                    "اگر بخواهیم یک تعریف به زبان عامیانه از اینستاگرام ارائه دهیم، می‌ توان گفت این شبکه اجتماعی محبوب، برای انجام فعالیت های گوناگون از فعالیت های سیاسی و اجتماعی تا تفریحی و یا ایجاد یک کسب و کار موفق ، محل بسیار مناسبی است."
                    "سال 2010 همان سالی است که در آن معجزه ای به نام اینستاگرام توسط کوین سیستروم و مایک کرایگر ساخته و منتشر شد. برنامه ای که در طی مدت کوتاهی توانست افراد زیادی را به خود جذب کند و تبدیل به یک شبکه ی اجتماعی بسیار پرطرفدار شود."
                    "اینستاگرام یکی از محبوب ترین و پرکاربردترین شبکه اجتماعی می باشد اینستاگرام شبکه اجتماعی می باشد که روزانه میلیون ها تا میلیاردها نفر در آن فعالیت دارند و از این شبکه اجتماعی استفاده می کنند."
                    "یکی از دلایل محبوبیت اینستاگرام این است که در این شبکه اجتماعی شما می توانید به هر چیزی که علاقه دارید و یا قصد راه اندازی کسب و کاری را دارید برسید."
                    "قابلیت ها و امکانات اینستاگرام برای کاربران قرار داده است بسیار زیاد و متنوع بوده و همین یکی از دلایل محبوب بودن و پرکاربردی بودن این اپلیکیشن می باشد. شما می توانید در اینستاگرام تمامی خوانندگان یا بازیگران و یا چیزهای مورد علاقه تان را دنبال کنید و از اخبار روز دنیا خبر دار باشید."),
                text_style(title: "تلگرام چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/Telegram-icon-on-transparent-PNG-min-transformed.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "در میان انبوه اپلیکیشن های پیام رسانی که این روزها در موبایل ها می بینیم، شکی نیست که تلگرام یکی از محبوب ترین آنهاست. این اپلیکیشن که توسط دو برادر برنامه نویس روس طراحی شده است."
                    "تلگرام هم اکنون یکی از محبوب‌ ترین اپلیکیشن‌ ها یا برنامه های پیام رسان موجود به شمار می‌ رود که قابلیت‌ های بسیار متعددی را در اختیار کاربران قرار داده و استفاده از تمام سرویس‌ های آن رایگان است."
                    "تلگرام ویژگی‌ های متعددی دارد که آن را از سایر اپلیکیشن‌ های پیام رسان متمایز می‌ کند. به عنوان مثال تلگرام از سیستم رمزنگاری سر تا سری بهره می‌برد و به هیچ عنوان اجازه دسترسی سایر افراد به حریم خصوصی کاربران را نمی‌ دهد."),
                text_style(title: "ویژگی های اصلی تلگرام"),
                Text(
                    "تلگرام مجموعه‌ ای از ویژگی‌ ها و قابلیت‌ های مختلف را در اختیار کاربران قرار می‌ دهد. این موضوع سبب شده که برنامه تلگرام بسیار محبوب شود. مطمئنا در یک پاراگراف کوتاه قادر به شر تمام قابلیت‌ های تلگرام نیستیم، بنابراین مجبوریم از بسیاری موارد صرف نظر کنیم. یکی از اصلی‌ ترین ویژگی‌ های تلگرام مربوط به امنیت بالای آن می‌ شود. تلگرام از سیستم رمزگذاری سر تا سری (End to End Encryption) بهره‌ مند است و به این صورت از حریم خصوصی کاربران حفاظت می‌ کند."
                    "سرعت عملکرد تلگرام بسیار بالاست و تیم توسعه دهنده آن به شدت در تلاش هستند تا عملکرد آن را بهبود بخشند. از اینرو هر روز قابلیت‌ های جدیدی به این برنامه اضافه می‌ شود. تلگرام امکان ساخت ربات و تعامل با سایر برنامه‌ ها نظیر اینستاگرام را از طریق دستورات IFTT فراهم می‌کند."
                    ""),
                text_style(title: "لینکدین چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/what-is-linkedin-transformed-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "لینکدین در واقع یک شبکه اجتماعی حرفه ای است که اساسا برای بهبود کسب و کارهای مختلف و آشنا کردن دیگران با آن ها طراحی شده است. با این حال، استفاده از لینکدین تنها به این موضوع محدود نمی شود و کاربران این شبکه اجتماعی می توانند از طریق آن، با افراد دیگری که در حوزه کاری شان فعالیت می کنند، آشنا شوند و با آن ها ارتباط برقرار کنند."
                    "همچنین می توان از این سیستم برای پیدا کردن کار یا استخدام افراد نیز استفاده کرد. این موضوع چندان مسئله عجیبی نیست؛ کافیست سری به صفحات اشخاص یا شرکت های مختف بزنید تا از این مسئله با خبر شوید. علاوه بر این، محدود به داشتن یک حساب کاربری نیستید و می توانید با در اختیار داشتن چند اکانت مختلف، استفاده های متعددی از لینکدین داشته باشید. کار کردن با این پلفترم نیز بسیار راحت تر از چیزیست که فکرش را می کنید."),
                text_style(title: "توییتر چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/image_600_400-transformed-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "توییتر یک سرویس میکروبلاگینگ است. یعنی در شبکه اجتماعی توییتر، وبلاگ نویسی در 280 کارکتر یا حرف فراهم شده است. این یعنی می توان خبر، دیدگاه یا جملات خود را با جملات کوتاه به مخاطبان منتقل کرد."
                    "توییتر با بیش از 1/3 میلیارد حساب کاربری، ماهانه 330 میلیون کاربر فعال و 145 میلیون کاربر روزانه، یک شبکه اجتماعی مهم برای افزایش فروش کسب کارها و افراد محسوب می شود."
                    "داشتن بازدید ویدیو، لایک و کامنت بالا و همچنین فالوور های معتبر، از جمله مواردی است که در الگوریتم توئیتر تاثیرگذار بوده و نهال آی تی نیز این خدمت را در اختیار شما قرار می دهد."),
                text_style(title: "فیسبوک چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/c3e8b__h0310ixa90232keq4t6l-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "فیس بوک (facebook) اگر چه در میان شبکه های اجتماعی قدیمی ترین نیست، اما بی شک مطرح ترین است. در نیمه سال 2018 تعداد کاربران فعال فیس بوک از 1/7 میلیارد نفر گذشت و در فصل سوم سال 2018، تعداد کاربران فعال ماهانه فیسبوک، 2/27 میلیارد نفر اعلام شد."
                    "فعالیت در فیسبوک از سال های دور بین کاربران ایرانی رواج داشته و از این شبکه اجتماعی برای تبادل اطلاعات، اشتراک گذاری عکس و ویدیو و مواردی از این دست استفاده می شود."
                    "داشتن بازدید و لایک بالا در فیسبوک، می تواند برای افرادی که در این شبکه اجتماعی فعال هستند، جزو مواردی باشد که اعتبار پیج را افزایش می دهد. همچنین به دلیل اهمیت بالای فیسبوک برای گوگل و سایر شبکه های اجتماعی، داشتن سیگنال بالا از این شبکه اجتماعی می تواند برای سئوی سایت نیز موثر باشد."),
                text_style(title: "آپارات چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/nody-%D9%84%D9%88%DA%AF%D9%88-%D8%A2%D9%BE%D8%A7%D8%B1%D8%A7%D8%AA-1628455708-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "امروزه با گسترش دنیای وب، سایت هایی مانند وب سایت آپارات به عنوان معتبرترین و بزرگترین سایت ایران که بهترین رتبه الکسا را در بین سایت های ایرانی دارد، بستری مناسب را با رابط کاربری جذاب در اختیار همه افراد قرار داده تا به راحتی بتوانند ویدیوی خود را آپلود کرده و کسب و کار خود را تبلیغ کنند."
                    "هر چه ویدیوهای یک کاربر از بازدید بالاتری برخوردار باشد، اعتبار بیشتری نزد کاربران و بازدیدکنندگان یافته و تاثیر بیشتری در ذهن آنان می گذارد."
                    "ضمنا به دلیل اینکه سایت آپارات از سئو و ارزش دامنه بالایی برخوردار است، امکان بهبود جایگاه ویدیوی شما در نتایج گوگل نیز وجود دارد."),
                text_style(title: "یوتیوب چیست ؟"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/Simple-YouTube-Logo-i-transformed-min.png",
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                ),
                Text(
                    "یوتیوب به عنوان یکی از زیرمجموعه های بزرگ کمپانی گوگل، معتبرترین سایت جهان در زمینه اشتراک ویدیو محسوب می شود و بسیاری از کاربران اینترنت از سراسر جهان، ویدیوهای خود را در آن به اشتراک گذاشته و از آن کسب درآمد می کنند. یکی از شروط لازم برای کسب درآمد از یوتیوب این است که ویدیوهای کانال شما حداقل 4 هزار ساعت بازدید داشته باشند."
                    "مجموعه کلیک اول، امکان افزایش بازدید یوتیوب را به صورت کاملا اختصاصی فراهم آورده تا کاربران بتوانند همانند آپارات، بازدید ویدیوی خود را در یوتیوب نیز افزایش دهند و ضمن کسب اعتبار بیشتر نزد کاربران، جایگاه بهتری را در گوگل و یوتیوب به دست آورند. نکته مهمی که باید بدان توجه کنید این است که مدت زمان بازدید ویدیو یکی از عوامل موثر در نحوه نمایش آمار در یوتیوب می باشد."),
                text_style(title: "خدمات شبکه های اجتماعی"),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/kisspng-telegram-encapsulated-postscript-transfer-5b1706056101263859681215282355253974-transformed-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات تلگرام",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "شکی نیست که تلگرام یکی از محبوب ترین اپلیکیشن ها می باشد. تلگرام ویژگی‌ های متعددی دارد که آن را از سایر اپلیکیشن‌ های پیام رسان متمایز می‌ کند. ما در این بستر به شما کمک میکنیم تا بتوانید کسب و کار خود را رونق دهید."),
                Divider(),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/linkedin-logo-transparent-116602552215dpnc1i8cu-transformed-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات لینکدین",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "لینکدین در واقع یک شبکه اجتماعی است که اساسا برای بهبود کسب و کارهای مختلف طراحی شده است. ما در نهال آی تی به شما کمک میکنیم تا با افراد دیگری که در حوزه کاری تان فعالیت می کنند، آشنا شوید."),
                Divider(),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/103-1037817_13-twitter-icon-vector-logo-images-twitter-logo-transformed-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات توییتر",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "داشتن بازدید ویدیو، لایک و کامنت بالا و همچنین فالوور های معتبر، از جمله مواردی است که در الگوریتم توئیتر تاثیرگذار بوده و نهال آی تی نیز این خدمت را در اختیار شما قرار می دهد."),
                Divider(),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/Facebook_Logo-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات فیسبوک",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "داشتن بازدید و لایک بالا در فیسبوک، می تواند برای افرادی که در این شبکه اجتماعی فعال هستند، جزو مواردی باشد که اعتبار پیج را افزایش می دهد که این امر، توسط تیم نهال آی تی ، برایتان فراهم شده است."),
                Divider(),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/nody-%D9%84%D9%88%DA%AF%D9%88-%D8%A2%D9%BE%D8%A7%D8%B1%D8%A7%D8%AA-1628455708-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات آپارات",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "هر چه ویدیوهای یک کاربر از بازدید بالاتری برخوردار باشد، اعتبار بیشتری نزد کاربران و بازدیدکنندگان یافته و تاثیر بیشتری در ذهن آنان می گذارد که این امر، توسط تیم نهال آی تی ، برایتان فراهم شده است."),
                Divider(),
                Image.network(
                  "https://nahalit.com/wp-content/uploads/2022/11/Simple-YouTube-Logo-i-transformed-min.png",
                  width: 150,
                  height: 150,
                ),
                Text(
                  "خدمات یوتیوب",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                    "یوتیوب معتبرترین سایت جهان در زمینه اشتراک ویدیو محسوب می شود و بسیاری از کاربران اینترنت از سراسر جهان، ویدیوهای خود را در آن به اشتراک گذاشته و از آن کسب درآمد می کنند. یکی از شروط لازم برای کسب درآمد از یوتیوب این است که ویدیوهای کانال شما حداقل 4 هزار ساعت بازدید داشته باشند. ما در تیم نهال آی تی به شما کمک میکنیم تا به کسب درامد برسید."),
                Divider(),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D8%B4%D8%A8%DA%A9%D9%87-%D9%87%D8%A7%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C-%D8%A7%D9%82%D8%AA%D8%B5%D8%A7%D8%AF%DB%8C2-min.png"),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D8%B4%D8%A8%DA%A9%D9%87-%D9%87%D8%A7%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C2-min.png"),
                Image.network(
                    "https://nahalit.com/wp-content/uploads/2022/11/%D8%AA%D8%B9%D8%B1%D9%81%D9%87-%D8%B4%D8%A8%DA%A9%D9%87-%D9%87%D8%A7%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C-%D9%88%DB%8C%DA%98%D9%872-min.png"),
                Container(
                  color: Colors.lightBlueAccent.shade100,
                  child: Column(
                    children: [
                      Image.network(
                          "https://nahalit.com/wp-content/uploads/2022/11/frm-thbt-sfarsh-transformed-min.png"),
                      Text(
                          "جهت سفارش انواع خدمات شبکه های اجتماعی ، میتوانید به صورت رایگان ، با شماره 09927674217 تماس بگیرید و یا از طریق لینک زیر اقدام کنید."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Purchase_guide()));
                        },
                        child: Text(
                          "سفارش پروژه شبکه های اجتماعی",
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
