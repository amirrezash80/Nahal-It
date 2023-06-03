import 'package:flutter/material.dart';
import 'package:nahal_it/Screens/login_screen.dart';
import 'package:nahal_it/signup_cards.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUp_Page extends StatefulWidget {
  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  late String email_address;
  late String phone_number;
  late String password;

  void updateEmailAddress(String value) {
    email_address = value;
  }

  void updatePhoneNumber(String value) {
    phone_number = value;
  }

  void updatePassword(String value) {
    password = value;
  }

  Future<void> signUp() async {
    final supabase = Supabase.instance.client;

    final response =
        await supabase.auth.signUp(email: email_address, password: password);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage("lib/images/Logo.png"),
                  height: size.height * 0.25,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                height: size.height * 0.65,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ثبت نام ",
                            style: TextStyle(fontSize: size.width * 0.05),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SignUpCards(
                      text: "آدرس ایمیل",
                      icon: Icons.email,
                      onChanged: updateEmailAddress,
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    SignUpCards(
                      text: "شماره ی موبایل",
                      icon: Icons.phone,
                      onChanged: updatePhoneNumber,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SignUpCards(
                      text: "رمز عبور",
                      icon: Icons.lock,
                      onChanged: updatePassword,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SignUpCards(
                      text: "تکرار رمز عبور",
                      icon: Icons.lock,
                      onChanged: updatePassword,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      width: size.width * 0.85,
                      height: size.height * 0.045,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        onPressed: signUp,
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

                        child: Text("ثبت نام",
                            style: TextStyle(fontSize: size.width * 0.05)),
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
