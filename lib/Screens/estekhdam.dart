import 'package:flutter/material.dart';
import 'package:nahal_it/estekhdam_cards.dart';
import 'package:supabase/supabase.dart';

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

  final _formKey = GlobalKey<FormState>();

  String? name;
  String? nationalCode;
  String? password;
  String? jobPosition;
  String? email;
  String? phoneNumber;

  Future<void> insertData({
    String? nationalCode,
    String? name,
    String? password,
    String? jobPosition,
    String? email,
    String? phoneNumber,
  }) async {
    try {
      final supabase = SupabaseClient(
          'https://forkbdelcxmfvvpocxjr.supabase.co',
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZvcmtiZGVsY3htZnZ2cG9jeGpyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODI5NDA0MTEsImV4cCI6MTk5ODUxNjQxMX0.t-gl6lFjcxE_iv8jAj54SvzviAXoUVicuYRp1rxXDlE');

      final response = await supabase.from('Estekhdam').insert({
        'SSN': nationalCode,
        'name': name,
        'password': password,
        'job_position': jobPosition,
        'email': email,
        'phone_number': phoneNumber,
      }).execute();

      if (response.status == 201) {
        showSnackbar('اطلاعات شما با موفقیت ارسال شد');
      } else {
        showSnackbar('خطا در ارسال اطلاعات');
      }
    } catch (error) {
      showSnackbar('خطا در ارسال اطلاعات');
      print(error);
    }
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                        fontSize: size.width * 0.06,
                        color: Colors.white,
                      ),
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
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    height: size.height,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height * 0.04),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              right: size.width * 0.05,
                              bottom: size.height * 0.007,
                            ),
                            child: Text(
                              "اطلاعات ضروری",
                              style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: size.width * 0.9,
                            height: 1,
                          ),
                          EstekhdamCards(
                            text: "نام و نام خانوادگی",
                            onSaved: (value) {
                              name = value;
                            },
                          ),
                          EstekhdamCards(
                            text: "کد ملی",
                            onSaved: (value) {
                              nationalCode = value;
                            },
                          ),
                          EstekhdamCards(
                            text: "رمز عبور",
                            onSaved: (value) {
                              password = value;
                            },
                          ),
                          Container(
                            padding: EdgeInsets.all(size.height * 0.02),
                            child: DropdownButtonFormField<String>(
                              hint: Text(
                                ' فرصت های شغلی',
                                style: TextStyle(color: Colors.grey),
                              ),
                              value: dropdownvalue,
                              onChanged: (newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                  jobPosition = newValue;
                                });
                              },
                              items: items.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              right: size.width * 0.05,
                              bottom: size.height * 0.007,
                            ),
                            child: Text(
                              "اطلاعات تماس",
                              style: TextStyle(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          EstekhdamCards(
                            text: "آدرس ایمیل",
                            onSaved: (value) {
                              email = value;
                            },
                          ),
                          EstekhdamCards(
                            text: "شماره‌ی موبایل",
                            onSaved: (value) {
                              phoneNumber = value;
                            },
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.green),
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  insertData(
                                    nationalCode: nationalCode,
                                    name: name,
                                    password: password,
                                    jobPosition: jobPosition,
                                    email: email,
                                    phoneNumber: phoneNumber,
                                  );
                                }
                              },
                              child: Text(
                                "ارسال فرم",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
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
