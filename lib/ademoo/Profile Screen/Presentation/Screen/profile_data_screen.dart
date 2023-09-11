import 'package:ademoo/core/utilizes/button.dart';
import 'package:ademoo/core/utilizes/svg.dart';
import 'package:ademoo/core/utilizes/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileDataScreen extends StatefulWidget {
   const ProfileDataScreen({super.key});

  @override
  State<ProfileDataScreen> createState() => _ProfileDataScreenState();
}

class _ProfileDataScreenState extends State<ProfileDataScreen> {
  String selectedOption = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 17.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      "Profile Information",
                      style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  AppSVG(assetName: 'headArrow', height: 3.5.h),
                ],
              ),
              SizedBox(height: 6.h,),
              CircleAvatar(
                backgroundImage: const NetworkImage("https://i.pinimg.com/474x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg"),maxRadius: 36.sp,
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 13.sp),
                child: Column(
                   children: [
                     AppTextField(hint: "UserName", keyboardType: TextInputType.name, controller: TextEditingController(), isPassword: false,
                         textInputAction: TextInputAction.next, textInputType: TextInputType.name),
                     SizedBox(height: 2.h,), AppTextField(hint: "Email", keyboardType: TextInputType.emailAddress, controller: TextEditingController(), isPassword: false,
                         textInputAction: TextInputAction.next, textInputType: TextInputType.emailAddress),
                     SizedBox(height: 2.h,), AppTextField(hint: "Phone number", keyboardType: TextInputType.phone, controller: TextEditingController(), isPassword: false,
                         textInputAction: TextInputAction.next, textInputType: TextInputType.phone),
                     SizedBox(height: 2.h,), AppTextField(hint: "Street Address", keyboardType: TextInputType.streetAddress, controller: TextEditingController(), isPassword: false,
                         textInputAction: TextInputAction.next, textInputType: TextInputType.streetAddress),
                     SizedBox(height: 2.h,),
                   ],
                ),
              ),
        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                  title:Text(
                    "Male",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  value: 'male',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });

                  }),
            ),
            Expanded(
              child: RadioListTile<String>(
                  title:Text(
                    "Female",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),

                  value: 'female',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });

                  }),
            ),
          ],
        ),
              SizedBox(height: 2.h,),
              AppButton(onPressed: () {

              }, label: "Confirm Change", sizeFont: 17.sp,bgColor: Colors.green,borderRadius: BorderRadius.circular(14.sp),)
            ],
          ),
        ),
      ),
    );
  }
}
