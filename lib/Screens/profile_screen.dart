import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/bottomNavigationBar.dart';

import '../profile_cards.dart';

class Profile_screen extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();

  void _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null && result.files.isNotEmpty) {
      String imagePath = result.files.single.path!;
      profileController.setImage(imagePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("پروفایل"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width * 0.3,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    GestureDetector(
                      onTap: _pickImage,
                      child: Obx(
                        () => CircleAvatar(
                          backgroundColor: Colors.green,
                          minRadius: 50,
                          maxRadius: 75,
                          backgroundImage: profileController
                                  .imagePath.value.isNotEmpty
                              ? AssetImage(profileController.imagePath.value)
                              : null,
                        ),
                      ),
                    ),
                    Text(
                      "name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.03),
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    Profile_Cards(text: 'فرم استخدام'),
                    Container(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.02, right: size.width * 0.01),
                        child: Text(
                          "اطلاعات شخصی",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                      ),
                    ),
                    Profile_Cards(text: "نام و نام خانوادگی"),
                    Profile_Cards(text: "شماره موبایل"),
                    Profile_Cards(text: "روش بازگرداندن وجه"),
                    Profile_Cards(text: "کد ملی"),
                    Profile_Cards(text: "شماره تلفن ثابت"),
                    Profile_Cards(text: "پست الکترونیک"),
                    Profile_Cards(text: "رمز عبور"),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Convex(),
      ),
    );
  }
}
