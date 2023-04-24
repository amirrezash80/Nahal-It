import 'package:flutter/material.dart';
import 'package:nahal_it/estekhdam_cards.dart';

class Estekhdam extends StatelessWidget {

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
                height: size.height*0.1,
                width: size.width,
                color: Colors.green,
                child:
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: size.height*0.05),
                    child: Text(
                      "استخدام",
                      style: TextStyle(
                        fontSize: size.width*0.06,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(color: Colors.green,
                  height: size.height,),
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    height: size.height,
                    child: Column(
                      children: [
                        SizedBox(height: size.height*0.03,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("شفل درخواستی"),
                            Text("وضعیت درخواست"),
                            Text("رضایت سنجی"),
                            Text("جزییات"),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: size.width*0.9,
                        ),
                        Row(
                          children: [
                            SizedBox(width: size.width*0.13,),
                            Text("---"),
                            SizedBox(width: size.width*0.22,),
                            Text("---"),
                            SizedBox(width: size.width*0.22,),
                            Text("---"),
                            SizedBox(width: size.width*0.15,),
                            Text("---"),
                          ],
                        ),
                        SizedBox(height: size.height*0.04,),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: size.width*0.05, bottom: size.height*0.007),
                          child: Text("اطلاعات ضروری" ,
                          style: TextStyle(
                            fontSize: size.width*0.04,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          width: size.width*0.9,
                          height: 1,
                        ),
                        Estekhdam_Cards(text: "نام و نام خانوادگی"),
                        Estekhdam_Cards(text: "کد ملی"),
                        Estekhdam_Cards(text: "رمز عبور"),
                        Estekhdam_Cards(text: "فرصت های شفلی"),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: size.width*0.05, bottom: size.height*0.007),
                          child: Text("اطلاعات تماس" ,
                            style: TextStyle(
                                fontSize: size.width*0.04,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Estekhdam_Cards(text: "آدرس ایمیل"),
                        Estekhdam_Cards(text: "شماره‌ی موبایل"),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    )
                                )
                            ),
                            onPressed: null, child:
                        Text("ارسال فرم",style: TextStyle(
                            color: Colors.white
                        ),)),
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
