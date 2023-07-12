import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'login_screen.dart';

class SignUp_Page extends StatefulWidget {
  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  bool isLoading = false; // Add isLoading flag

  void signUp() async {
    final supabase = Supabase.instance.client;

    final email = emailController.text.trim();
    final phoneNumber = phoneNumberController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (email.isNotEmpty &&
        phoneNumber.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty) {
      if (password == confirmPassword) {
        setState(() {
          isLoading = true;
        });

        try {
          final response =
          await supabase.auth.signUp(email: email, password: password);

          setState(() {
            isLoading = false;
          });

          if (response.user != null) {
            Get.to(LoginPage());
          } else {
            showSnackbar('خطا در ثبت نام');
          }
        } catch (error) {
          showSnackbar(error.toString());
          setState(() {
            isLoading = false;
          });
        }
      } else {
        showSnackbar('رمز عبور و تکرار آن برابر نیستند');
      }
    } else {
      showSnackbar('لطفاً تمام فیلدها را پر کنید');
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
                      controller: emailController,
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    SignUpCards(
                      text: "شماره ی موبایل",
                      icon: Icons.phone,
                      controller: phoneNumberController,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SignUpCards(
                      text: "رمز عبور",
                      icon: Icons.lock,
                      controller: passwordController,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SignUpCards(
                      text: "تکرار رمز عبور",
                      icon: Icons.lock,
                      controller: confirmPasswordController,
                      obscureText: true,
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
                          MaterialStateProperty.all<Color>(
                              isLoading ? Colors.grey : Colors.green), // Disable button when loading
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        onPressed: isLoading ? null : signUp, // Disable button when loading
                        child: isLoading // Show progress indicator or text based on isLoading
                            ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white),
                        )
                            : Text(
                          "ثبت نام",
                          style: TextStyle(fontSize: size.width * 0.05),
                        ),
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

class SignUpCards extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextEditingController controller;
  final bool obscureText;

  const SignUpCards({
    required this.text,
    required this.icon,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(right: 15),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: text,
              labelStyle: TextStyle(color: Colors.grey.shade600),
              prefixIcon: Icon(icon, color: Colors.green),
            ),
          ),
        ),
      ),
    );
  }
}
