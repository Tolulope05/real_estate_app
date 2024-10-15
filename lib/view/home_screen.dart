import 'package:animated_number/animated_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:real_estate_app/constants/colors.dart';

import 'widget/estate_view_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.clamp,
              stops: const [0.0, 0.2, 0.4, 1.0],
              colors: bgGradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 16.h, left: 16.w),
                            padding: EdgeInsets.all(12.w),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: faintGreyColor,
                                ),
                                SizedBox(width: 12.w),
                                const Text(
                                  "Saint Petersburg",
                                  style: TextStyle(
                                    color: faintGreyColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 16.h, right: 16.w),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Image.network(
                              "https://xsgames.co/randomusers/avatar.php?g=female",
                              height: 50.h,
                              width: 50.w,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.w),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "Hi, Marina",
                          style: TextStyle(
                            color: faintGreyColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Text(
                          "let's select your perfect place",
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.w),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 16.w),
                              padding: EdgeInsets.all(12.w),
                              decoration: const ShapeDecoration(
                                color: primaryColor,
                                shape: CircleBorder(),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "BUY",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 18.h),
                                  AnimatedNumber(
                                    startValue: 0,
                                    endValue: 1034,
                                    isFloatingPoint: false,
                                    duration: const Duration(seconds: 2),
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "offers",
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 16.w),
                              padding: EdgeInsets.all(12.w),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "BUY",
                                    style: TextStyle(
                                      color: faintGreyColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 18.h),
                                  AnimatedNumber(
                                    startValue: 0,
                                    endValue: 2212,
                                    isFloatingPoint: false,
                                    duration: const Duration(seconds: 2),
                                    style: TextStyle(
                                      color: faintGreyColor,
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "offers",
                                    style: TextStyle(
                                      color: faintGreyColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.w),
                      // const EstateViewCard(), // Flexibility not attained. Review.
                      StaggeredGrid.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        children: const [
                          StaggeredGridTile.count(
                            crossAxisCellCount: 4,
                            mainAxisCellCount: 2,
                            child: EstateView(index: 0),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 4,
                            child: EstateView(index: 1),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: EstateView(index: 2),
                          ),
                          StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 2,
                            child: EstateView(index: 3),
                          ),
                        ],
                      ),
                      Container(height: 200)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
