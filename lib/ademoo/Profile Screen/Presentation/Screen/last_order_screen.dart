import 'package:ademoo/ademoo/Cart%20Screen/Presentation/Screen/cart_screen.dart';
import 'package:ademoo/core/utilizes/button.dart';
import 'package:ademoo/core/utilizes/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LastOrderScreen extends StatelessWidget {
   LastOrderScreen({super.key});
  List<TextDto> orderList = [
    TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
    TextDto("Your item has been picked up by courier partner.", "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 17.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Order Bag",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2.h,),
              Expanded(
                flex: 5,
                child: ListView.separated(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 0.4.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.sp),
                            child: Image.network(
                              "https://myhomefurniture.co.uk/cdn/shop/files/nice_cosy_living_room_with_lots_of_furniture_and_12c04135-2a82-46fa-a135-826a95c45d91-2_1800x1000.jpg?v=1688575267",
                              fit: BoxFit.fill,
                              height: 13.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Breitling - Shark",
                                    style: TextStyle(
                                        fontSize: 16.sp, fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12.sp,vertical: 8.sp),
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.sp),color: Colors.grey),
                                    child: Text(
                                      "InDeliver",
                                      style: TextStyle(
                                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],
                              ),

                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            itemSize: 16.sp,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            maxRating: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.sp),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                              Text(
                                "Yesterday I saw a film titled Macbeth. Its story elements are interesting. The film’s hero, Macbeth, assassinates Duncan and ascends to the throne of Scotland. But he is dissatisfied",
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),maxLines: 3,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity:',
                                    style: TextStyle(
                                        fontSize: 15.sp, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 15.sp, fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '150.EGP',
                                    style: TextStyle(
                                        fontSize: 15.sp, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: GestureDetector(
                      onTap: () => showModalBottomSheet(context: context, builder: (context) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.sp,horizontal: 15.sp),
                        child: Column(
                            children: [
                              Text(
                                "Order Tracker",
                                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2.h,),
                              OrderTracker(
                                status: Status.delivered,
                                activeColor: Colors.green,
                                inActiveColor: Colors.grey[300],
                                orderTitleAndDateList: orderList,
                                shippedTitleAndDateList: shippedList,
                                outOfDeliveryTitleAndDateList: outOfDeliveryList,
                                deliveredTitleAndDateList: deliveredList,
                              )]),
                      ),),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14.sp,horizontal: 15.sp),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.sp),color: Colors.green.shade300),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppSVG(assetName: 'tracker',color: Colors.white,height: 4.h),
                            SizedBox(width: 4.w,),
                            Text(
                              "For Tracking Your Orders",
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),)),
                ),
              )

            ],
          ),


    )));
}}
