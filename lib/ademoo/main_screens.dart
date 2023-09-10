import 'package:ademoo/ademoo/Cart%20Screen/Presentation/Screen/cart_screen.dart';
import 'package:ademoo/ademoo/Home%20Screen/Presentation/Screen/home_screen.dart';
import 'package:ademoo/ademoo/Profile%20Screen/Presentation/Screen/profile_screen.dart';
import 'package:ademoo/ademoo/presentation/component/app_bar_custom.dart';
import 'package:ademoo/core/utilizes/svg.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  CounterPageState createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeScreen(),
    const Center(child: Text('Tab 3')),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 17.sp),
        child: _tabs[_currentIndex],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: AppSVG(assetName: "home",color: _currentIndex == 0 ? Colors.black : Colors.black38),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: AppSVG(assetName: "favourite",color: _currentIndex == 1 ? Colors.black : Colors.black38),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: AppSVG(assetName: "cartBNB",color: _currentIndex == 2 ? Colors.black : Colors.black38),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: AppSVG(assetName: "profileBNB",color: _currentIndex == 3 ? Colors.black : Colors.black38),
            label: 'Profile',
          ),
        ],
        showUnselectedLabels: true,showSelectedLabels: true,
        type: BottomNavigationBarType.shifting,
        unselectedLabelStyle: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontFamily: 'poppins',fontSize: 14.sp),
        selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'poppins',fontSize: 14.sp),
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white70
            : Colors.grey.shade800,
        selectedItemColor: Colors.black,mouseCursor: MaterialStateMouseCursor.clickable,
        unselectedItemColor: Theme.of(context).brightness == Brightness.light
            ? Colors.black
            : Colors.white,

      ),
    );
  }
}
