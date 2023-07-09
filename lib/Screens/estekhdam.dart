import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:nahal_it/estekhdam_cards.dart';

class Estekhdam extends StatefulWidget {
  @override
  State<Estekhdam> createState() => _EstekhdamState();
}

class _EstekhdamState extends State<Estekhdam> {
  String dropdownvalue = 'فرصت های شغلی';

  // List of items in our dropdown menu
  var items = [
    'فرصت های شغلی',
    'طراح سایت بخش فرانت اند',
    'طراح سایت بخش بک اند',
    'طراح قالب وردپرس',
    'طراح پلاگین وردپرس',
    "طراح اپلیکیشن اندروید",
    "طراح اپلیکیشن IOS",
    "برنامه نویس لاراول",
    "متخصص پایگاه داده",
    "برنامه نویس جاوا",
    "تولید محتوا",
    "سئو",
    "گرافیک",
    "انیمیشن",
    "بازاریابی",
    "برنامه نویس پایتون",
    "موشن گرافیک",
  ];

  @override
  Widget build(BuildContext context) {
    var name, id, pass, email, phone_number;

    var size = MediaQuery.of(context).size;

    var selectedValue;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width,
                color: Colors.green,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.05),
                    child: Text(
                      "استخدام",
                      style: TextStyle(
                          fontSize: size.width * 0.06, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.green,
                    height: size.height,
                  ),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    height: size.height,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("شفل درخواستی"),
                            Text("وضعیت درخواست"),
                            Text("رضایت سنجی"),
                            Text("جزییات"),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: size.width * 0.9,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.13,
                            ),
                            Text("---"),
                            SizedBox(
                              width: size.width * 0.22,
                            ),
                            Text("---"),
                            SizedBox(
                              width: size.width * 0.22,
                            ),
                            Text("---"),
                            SizedBox(
                              width: size.width * 0.15,
                            ),
                            Text("---"),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(
                              right: size.width * 0.05,
                              bottom: size.height * 0.007),
                          child: Text(
                            "اطلاعات ضروری",
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width * 0.9,
                          height: 1,
                        ),
                        Estekhdam_Cards(text: "نام و نام خانوادگی"),
                        Estekhdam_Cards(text: "کد ملی"),
                        Estekhdam_Cards(text: "رمز عبور"),
                        Container(
                          padding: EdgeInsets.all(size.height * 0.02),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ' فرصت های شغلی',
                              border: OutlineInputBorder(),
                              suffixIcon: DropdownButtonFormField(
                                hint: Text(
                                  "  فرصت های شغلی  ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                value: selectedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                },
                                items: items.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(
                              right: size.width * 0.05,
                              bottom: size.height * 0.007),
                          child: Text(
                            "اطلاعات تماس",
                            style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Estekhdam_Cards(text: "آدرس ایمیل"),
                        Estekhdam_Cards(text: "شماره‌ی موبایل"),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            )),
                          ),
                          onPressed: null,
                          child: Text(
                            "ارسال فرم",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
