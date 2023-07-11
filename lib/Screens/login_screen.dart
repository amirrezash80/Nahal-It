import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import "package:nahal_it/Controller.dart";
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/signup_screen.dart';



class LoginPage extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      final response =
      await authController.signIn(email: email, password: password);

      if (response.user != null) {
        // Successful sign-in
        Get.offAll(() => Home_Screen(title: "nahal it", username: email));
      } else {
        // Sign-in failed
        Get.snackbar(
          'Error',
          'Invalid email or password',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else {
      // Missing email or password
      Get.snackbar(
        'Error',
        'Please enter email and password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
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
                height: size.height * 0.6,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "به اکانت ",
                            style: TextStyle(fontSize: size.width * 0.05),
                          ),
                          Text(
                            "ورود ",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: size.width * 0.05,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Text(
                        "آدرس ایمیل",
                        textAlign: TextAlign.end,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Container(
                      color: Colors.white,
                      height: size.height * 0.07,
                      width: size.width * 0.9,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.02),
                          child: Center(
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                                border: InputBorder.none,
                                hintText: 'آدرس ایمیل',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Text(
                        "رمز عبور",
                        textAlign: TextAlign.end,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Container(
                      color: Colors.white,
                      height: size.height * 0.07,
                      width: size.width * 0.9,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.only(right: size.width * 0.02),
                          child: Center(
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                border: InputBorder.none,
                                hintText: 'رمز عبور',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        "فراموشی رمز ",
                        style: TextStyle(color: Colors.green),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
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
                        onPressed: signIn,
                        child: Text(
                          "ورود",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.to(() => SignUp_Page());
                            },
                            child: Text(
                              "ثبت نام",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.offAll(() =>
                                  Home_Screen(title: "نهال آی تی", username: "guest"));
                            },
                            child: Text(
                              "ورود به عنوان مهمان",
                              style: TextStyle(color: Colors.green),
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
