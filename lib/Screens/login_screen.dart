import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:nahal_it/Controller.dart";
import 'package:nahal_it/Screens/Home_Screen.dart';
import 'package:nahal_it/Screens/signup_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController authController = Get.find<AuthController>();
  final user username = Get.find<user>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final RxBool isLoading = false.obs;
  bool isPasswordVisible = false;

  void signIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      isLoading.value = true;

      try {
        final response =
            await authController.signIn(email: email, password: password);

        if (response.user != null) {
          // Successful sign-in
          username.username = email;
          Get.offAll(() => Home_Screen());
        } else {
          // Sign-in failed
          Get.rawSnackbar(
            message: 'Invalid email or password',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
          );
        }
      } catch (e) {
        // Exception occurred during sign-in
        Get.rawSnackbar(
          message: 'Error occurred: ${e.toString()}',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
        );
      } finally {
        isLoading.value = false;
      }
    } else {
      // Missing email or password
      Get.rawSnackbar(
        message: 'Please enter email and password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
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
                              obscureText: !isPasswordVisible,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                border: InputBorder.none,
                                hintText: 'رمز عبور',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                ),
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
                      child: Obx(
                        () => ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          onPressed: isLoading.value ? null : signIn,
                          child: isLoading.value
                              ? CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                )
                              : Text(
                                  "ورود",
                                  style: TextStyle(color: Colors.white),
                                ),
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
                              username.username = "guest";
                              Get.offAll(() => Home_Screen());
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
