import 'package:ademoo/core/utilizes/svg.dart';
import 'package:ademoo/core/utilizes/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> cardColors = [
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.orange,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Explore What You Needs...",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            AppSVG(assetName: 'bell', height: 3.5.h),
            SizedBox(
              width: 3.w,
            ),
            AppSVG(assetName: 'logout', height: 3.5.h),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(
                  height: 6.h,
                  child: AppTextField(
                      hint: "Search what you want.......",
                      keyboardType: TextInputType.text,
                      controller: TextEditingController(),
                      isPassword: false,
                      textInputAction: TextInputAction.search,
                      textInputType: TextInputType.text),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.4.h),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.3.w),
                      borderRadius: BorderRadius.circular(14.sp)),
                  child: AppSVG(
                    assetName: 'search',
                    height: 3.h,
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  AppSVG(
                    assetName: 'arrow',
                    color: Colors.green,
                    height: 3.h,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
          child: ListView.builder(
            scrollDirection:  Axis.horizontal,
            itemBuilder:  (context, index) =>Row(
              children: [
                SizedBox(
                width: 250,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 20.sp),
                  decoration: BoxDecoration(
                      color: cardColors[index],
                      border: Border.all(width: 0.3.sp),
                      borderRadius: BorderRadius.circular(16.sp)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Home Items",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp)),
                      ),
                      CircleAvatar(
                        maxRadius: 30.sp,
                        backgroundColor: Colors.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.contain, // Adjust this property as needed
                              image: NetworkImage(
                                "https://p7.hiclipart.com/preview/759/702/518/paper-stationery-office-supplies-stationery-items.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),
                SizedBox(width: 2.w,)
              ],
            ),itemCount: cardColors.length,),
        ),
        SizedBox(height: 1.h,),
        Text(
          "Offers",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
        ),
        SizedBox(height: 0.7.h,),

        SizedBox(
          height: 13.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.sp), // Set the border radius
                        child: Image.network("https://myhomefurniture.co.uk/cdn/shop/files/nice_cosy_living_room_with_lots_of_furniture_and_12c04135-2a82-46fa-a135-826a95c45d91-2_1800x1000.jpg?v=1688575267",fit: BoxFit.fill ,width: 90.w,)),
                    Positioned(
                      bottom: 25,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 18.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get up to 70% Off",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.sp, color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(
                                  "See Home Items",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: Colors.white),
                                ),
                                const AppSVG(assetName: "arrow",color: Colors.white,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 2.w,)
              ],
            ),itemCount: 2,),
        ),
        SizedBox(height: 1.h,),
        Row(
          children: [
            Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  AppSVG(
                    assetName: 'arrow',
                    color: Colors.green,
                    height: 3.h,
                  )
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.sp,
            crossAxisSpacing: 20.sp,
          ),
            itemBuilder:(context, index) => Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.sp), // Set the border radius
                    child: Image.network("https://myhomefurniture.co.uk/cdn/shop/files/nice_cosy_living_room_with_lots_of_furniture_and_12c04135-2a82-46fa-a135-826a95c45d91-2_1800x1000.jpg?v=1688575267",fit: BoxFit.fill,height: 18.h,)),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
                  child: Text(
                    "Home Furniture",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: Colors.white),
                  ),
                ),
              ],
            ),itemCount: 9,
            shrinkWrap: true,
            physics: const RangeMaintainingScrollPhysics(), // Disable GridView scrolling

          ),
        )




      ],
    );
  }
}
