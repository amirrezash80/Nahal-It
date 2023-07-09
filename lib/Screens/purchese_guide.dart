import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:nahal_it/estekhdam_cards.dart';

class Purchase_guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _pickFile() async {
      // opens storage to pick files and the picked file or files
      // are assigned into result and if no file is chosen result is null.
      // you can also toggle "allowMultiple" true or false depending on your need
      final result = await FilePicker.platform.pickFiles(allowMultiple: false);

      // if no file is picked
      if (result == null) return;
    }

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("راهنمای خرید"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
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
                        "سفارش طراحی",
                        style: TextStyle(fontSize: size.width * 0.06),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "راهنمای سفارش :",
                    style: TextStyle(fontSize: size.width * 0.06),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                      "شما در ابتدا برای ثبت سفارش خود باید با مراجعه به بخش پشتیبانی یک تیکت با موضوع سفارش طراحی بدهید ."
                      "در بخش پشتیبانی با انتخاب دپارتمان ارتباط با نهال آی تی و انتخاب نوع تیکت قیمت سفارش طراحی سفارش خود را مطرح نمایید ."
                      "بعد با شرح کامل سفارش طراحی برایمان به طورکامل توضیح دهید ."
                      "حتی میتوانید با امکان ویس دادن در بخش پشتیبانی ، توضیحات خود را با ویس ارائه دهید ."
                      "بعد از تیکت ، همکاران ما در بخش پشتیبانی بهای انجام پروژه را برای شما اعلام خواهند کرد ."
                      "سپس در صورت نداشتن مشکلی اعلام کنید که پروژه اغاز شود ."
                      "سپس با مراجعه به این صفحه ثبت سفارش را به صورت رسمی انجام دهید ."
                      "لازم به ذکر است شما می توانید پرداخت بهای انجام پروژه را به صورت قسطی نیز پرداخت نمایید."),
                ),
                Estekhdam_Cards(text: "نام"),
                Estekhdam_Cards(text: "شماره"),
                Estekhdam_Cards(text: "ایمیل"),
                Estekhdam_Cards(text: "سفارش پروژه"),
                Estekhdam_Cards(text: "توضیحات"),
                Text("در صورت نیاز به آپلود فایل آپلود کنید"),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey)
                  ),
                  onPressed: () {
                    _pickFile();
                  },
                  child: Text("choose file"),
                ),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.05,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: null,
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    child: Text(
                      "ارسال",
                      style: TextStyle(fontSize: size.width * 0.05 ,color: Colors.white),
                    ),
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
