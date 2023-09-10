import 'package:ademoo/core/utilizes/button.dart';
import 'package:ademoo/core/utilizes/svg.dart';
import 'package:ademoo/core/utilizes/text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Shopping Bag",
          style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.sp),
                      child: Image.network(
                        "https://myhomefurniture.co.uk/cdn/shop/files/nice_cosy_living_room_with_lots_of_furniture_and_12c04135-2a82-46fa-a135-826a95c45d91-2_1800x1000.jpg?v=1688575267",
                        fit: BoxFit.fill,
                        height: 12.h,
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
                            const AppSVG(
                              assetName: "delete",
                              color: Colors.red,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Quantity",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black, width: 1.9.sp),
                                borderRadius: BorderRadius.circular(14.sp),
                              ),
                              child: const AppSVG(assetName: "plus"),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black, width: 2.9.sp),
                                borderRadius: BorderRadius.circular(14.sp),
                              ),
                              child: const AppSVG(assetName: "minus"),
                            ),
                            const Spacer(),
                            Text(
                              '150.EGP',
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
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
        Row(
          children: [
            Expanded(
              flex: 2,
              child: AppButton(
                onPressed: () {
                  showModalBottomSheet(context: context, builder: (context) => const CartDetails(),);
                },
                label: "Checkout",
                sizeFont: 16.sp,
                bgColor: Colors.green,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Total",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "70.000.EGP",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class CartDetails extends StatefulWidget {
  const CartDetails({super.key});

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  String selectedOption = "visa";
@override
  Widget build(BuildContext context) {
    return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 1.h),
            child: Column(
              children: [
                Text(
                  "Add Personal Data",
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2.h,
                ),
                AppTextField(
                    hint: "Enter Your Name",
                    keyboardType: TextInputType.name,
                    controller: TextEditingController(),
                    isPassword: false,
                    title: "Personal Name",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name),
                SizedBox(
                  height: 2.h,
                ),
                AppTextField(
                    hint: "Enter Your Email",
                    keyboardType: TextInputType.emailAddress,
                    controller: TextEditingController(),
                    isPassword: false,
                    title: "Email Address",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress),
                SizedBox(
                  height: 2.h,
                ),
                AppTextField(
                    hint: "Enter Your Phone",
                    keyboardType: TextInputType.phone,
                    controller: TextEditingController(),
                    isPassword: false,
                    title: "Phone Number",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.phone),
                SizedBox(
                  height: 2.h,
                ),
                AppTextField(
                    hint: "Enter Your Address",
                    keyboardType: TextInputType.streetAddress,
                    controller: TextEditingController(),
                    isPassword: false,
                    title: "Street Address",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.streetAddress),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                          title:Text(
                            "Cash",
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          value: 'cash',
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
                            "Visa",
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),

                          value: 'visa',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });

                          }),
                    ),
                  ],
                ),
                AppButton(onPressed: () {
                  selectedOption == 'cash' ?
                     _showConfirmationDialog(context)
                   : Container();
                }, label: "Next Progress", sizeFont: 16.sp,bgColor: Colors.green,)
              ],
            ),

      );
    }

  }


void _showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Confirmation Order"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Are you sure you want to confirm your order?",
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle confirmation logic here
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text("Confirm"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text("Cancel"),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

