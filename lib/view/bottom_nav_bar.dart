import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate_app/constants/colors.dart';
import 'package:real_estate_app/view/chat_screen.dart';
import 'package:real_estate_app/view/fav_screen.dart';
import 'package:real_estate_app/view/home_screen.dart';
import 'package:real_estate_app/view/profile_screen.dart';
import 'package:real_estate_app/view/search_screen.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  List<IconData> icons = [
    Iconsax.search_normal,
    Iconsax.message,
    Iconsax.home,
    CupertinoIcons.heart_fill,
    CupertinoIcons.person_fill,
  ];

  int currentIndex = 2;

  Widget iconGenerator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 50.h,
      width: 50.w,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: currentIndex == index ? primaryColor : blackColor,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Icon(
        icons[index],
        color: whiteColor,
      ),
    );
  }

  int get length => icons.length;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> homePages = [
    SearchScreen(),
    const ChatScreen(),
    const HomeScreen(),
    const FavScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: homePages[currentIndex],
      bottomNavigationBar: FadeInUpBig(
        duration: const Duration(seconds: 7),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(4.w),
            margin: EdgeInsets.only(
              left: 40.w,
              right: 40.w,
              bottom: 12.h,
            ),
            decoration: BoxDecoration(
              color: blackColor.withOpacity(0.95),
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 12.r,
                  spreadRadius: 2.r,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(length, (index) {
                return GestureDetector(
                  onTap: () => onTap(index),
                  child: iconGenerator(index),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
