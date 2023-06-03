import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/signup_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email_address;
  late String password;

  @override

  void Login() async
  {
    final supabase = Supabase.instance.client;
    final AuthResponse res = await supabase.auth.signUp(
      email: email_address,
      password: password,
    );

    final Session? session = res.session;
    final User? user = res.user;


    Navigator.push(
        context,
        MaterialPageRoute(
            builder:
                (context)=>
                    Home_Screen(title: "Nahal_it" , username: email_address,),
        ),
    );
  }
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child:
                Image(
                  image: AssetImage("lib/images/Logo.png"),
                  height: size.height*0.25,
                ),
                ),
              Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(
                  color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
    ),
    ),
                height: size.height*0.6,
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.03,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("به اکانت ",
                            style: TextStyle(
                          fontSize: size.width*0.05
                          ),
                          ),
                          Text(
                            "ورود ",
                            style:
                            TextStyle(
                                color: Colors.green,
                                fontSize: size.width*0.05
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.03,),
                    Container(
                      width: size.width*0.9,
                        child: Text("آدرس ایمیل" , textAlign: TextAlign.end,)),
                    SizedBox(height: size.height*0.015,),
                    Container(
                      color: Colors.white,
                      height: size.height*0.07,
                      width: size.width*0.9,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding:  EdgeInsets.only(right: size.width*0.02),
                          child: Center(
                            child: TextField(
                             onChanged:(text){
                               setState(() {
                                 email_address = text;
                               });
                             },
                              decoration: InputDecoration(
                                icon: Icon(Icons.email , color: Colors.green,),
                                border: InputBorder.none,
                                hintText: 'آدرس ایمیل',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.015,),
                    Container(
                        width: size.width*0.9,
                        child: Text("رمز عبور", textAlign: TextAlign.end,)),
                    SizedBox(height: size.height*0.01,),
                    Container(
                      color: Colors.white,
                      height: size.height*0.07,
                      width: size.width*0.9,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding:  EdgeInsets.only(right: size.width*0.02),
                          child: Center(
                            child: TextField(
                              onChanged: (text){
                                setState(() {
                                  password = text;
                                });
                              },
                                decoration: InputDecoration(
                                icon: Icon(Icons.lock , color: Colors.green,),
                                border: InputBorder.none,
                                hintText: 'رمز عبور',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.02,),
                    Container(
                      width: size.width*0.8,
                      child: Text("فراموشی رمز " ,
                      style: TextStyle(
                        color: Colors.green
                      ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: size.height*0.03,),
                    Container(
                    width: size.width*0.85,
                    height: size.height*0.045,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                )
                            )
                        ),
                        onPressed: Login, child:
                    Text("ورود",style: TextStyle(
                      color: Colors.white
                    ),)),
                  ),
                    SizedBox(
                      height: size.height*0.03,),
                    Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                        onPressed:(){
                    setState(() {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp_Page()),
                    );
                    });
                    },
                          child: Text(
                            "ثبت نام" ,
                            style:
                            TextStyle(
                                color: Colors.green
                        ),
                        ),
                        ),
                        Text("اکانت ندارید؟"),
                      ],
                     ),
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
