import 'package:ademoo/core/utilizes/svg.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool ShowSettingsOption = false;
  bool isDark = false;
  String selectedValue = 'English US';


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 25.sp,
              backgroundImage: const NetworkImage(
                  "https://img.freepik.com/premium-photo/man-with-beard-leather-jacket_871710-10121.jpg"),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome ...",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Moaz Muhammed Atiya",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {}, child: const AppSVG(assetName: "logout"))
          ],
        ),
        Divider(),
        SizedBox(
          height: 4.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              AppSVG(
                assetName: "order",
                color: Colors.black,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "My Orders",
                style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              AppSVG(assetName: "headArrow")
            ],
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              AppSVG(
                assetName: "creditCard",
                color: Colors.black,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "Credit Card",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              AppSVG(assetName: "headArrow")
            ],
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              AppSVG(
                assetName: "profile",
                color: Colors.black,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              AppSVG(assetName: "headArrow")
            ],
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ShowSettingsOption = !ShowSettingsOption;
            });
          },
          child: Row(
            children: [
              AppSVG(
                assetName: "settings",
                color: Colors.black,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "Settings",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              AppSVG(assetName: "headArrow")
            ],
          ),
        ),
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          // Adjust the duration as needed
          opacity: ShowSettingsOption ? 1.0 : 0.0,
          child:
          Column(
            children: [
              CheckboxListTile(
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade900),
                ),
                value: isDark,
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    isDark = value!;
                  });
                },
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 17.sp),
                child: Row(
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade900),
                    ),
                    Spacer(),
                    DropdownButton<String>(
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Arabic',
                        'English US',
                        'Germany',
                        'Italy',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ) // Replace with the widget you want to display
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 20.sp),
          decoration: BoxDecoration(
              color: Colors.green.shade100,
              border: Border.all(color: Colors.green.shade100, width: 1.5.w),
              borderRadius: BorderRadius.circular(14.sp)),
          child: Row(
            children: [
              AppSVG(assetName: 'support', height: 5.h, color: Colors.green),
              SizedBox(
                width: 4.w,
              ),
              Text(
                "How can help you !",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h,)
      ],
    );
  }
}