import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nahal_it/Controller.dart';
import 'package:nahal_it/bottomNavigationBar.dart';

import '../profile_cards.dart';

class Profile_screen extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();

  void _pickImage(BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result != null && result.files.isNotEmpty) {
        String imagePath = result.files.single.path!;
        profileController.setImage(imagePath);
      } else {
        // User canceled the file picking
        return;
      }
    } catch (e) {
      // Handle file picking error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error picking image. Please try again.'),
        ),
      );
      return;
    }
  }

  void _editName(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newName = '';

        return AlertDialog(
          title: Text('نام و نام خانوادگی'),
          content: TextField(
            onChanged: (value) {
              newName = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                profileController.setName(newName);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }

  void _editMobileNumber(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newMobileNumber = '';

        return AlertDialog(
          title: Text('شماره موبایل'),
          content: TextField(
            onChanged: (value) {
              newMobileNumber = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the new mobile number
                profileController.setPhone(newMobileNumber);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }

  void _selectReturnMethod(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String selectedMethod = '';

        return AlertDialog(
          title: Text('روش بازگرداندن وجه'),
          content: Column(
            children: [
              RadioListTile(
                title: Text('Method 1'),
                value: 'method1',
                groupValue: selectedMethod,
                onChanged: (value) {
                  selectedMethod = value as String;
                },
              ),
              RadioListTile(
                title: Text('Method 2'),
                value: 'method2',
                groupValue: selectedMethod,
                onChanged: (value) {
                  selectedMethod = value as String;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the selected return method
                profileController.setrefund(selectedMethod);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }

  void _editNationalID(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newNationalID = '';

        return AlertDialog(
          title: Text('کد ملی'),
          content: TextField(
            onChanged: (value) {
              newNationalID = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the new national ID
                profileController.setNationalcode(newNationalID);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }

  void _editLandlineNumber(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newLandlineNumber = '';

        return AlertDialog(
          title: Text('شماره تلفن ثابت'),
          content: TextField(
            onChanged: (value) {
              newLandlineNumber = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the new landline number
                profileController.setNumber(newLandlineNumber);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
  }

  void _editEmail(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        String newEmail = '';

        return AlertDialog(
          title: Text('پست الکترونیک'),
          content: TextField(
            onChanged: (value) {
              newEmail = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Save the new email
                profileController.setEmail(newEmail);
                Navigator.pop(context);
              },
              child: Text('ذخیره'),
            ),
          ],
        );
      },
    );
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
                      onTap: () => _pickImage(context),
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
                      profileController.name.value,
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
                    Container(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                          right: size.width * 0.01,
                        ),
                        child: Text(
                          "اطلاعات شخصی",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _editName(context),
                      child: Profile_Cards(
                        text: "نام و نام خانوادگی",
                        value: profileController.name.value,
                        onTap: () => _editName(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _editMobileNumber(context),
                      child: Profile_Cards(
                        text: "شماره موبایل",
                        value: profileController.phoneNumber.value,
                        onTap: () => _editMobileNumber(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _selectReturnMethod(context),
                      child: Profile_Cards(
                        text: "روش بازگرداندن وجه",
                        value: profileController.refundMethod.value,
                        onTap: () => _selectReturnMethod(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _editNationalID(context),
                      child: Profile_Cards(
                        text: "کد ملی",
                        value: profileController.nationalCode.value,
                        onTap: () => _editNationalID(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _editLandlineNumber(context),
                      child: Profile_Cards(
                        text: "شماره تلفن ثابت",
                        value: profileController.landlineNumber.value,
                        onTap: () => _editLandlineNumber(context),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _editEmail(context),
                      child: Profile_Cards(
                        text: "پست الکترونیک",
                        value: profileController.email.value,
                        onTap: () => _editEmail(context),
                      ),
                    ),
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
