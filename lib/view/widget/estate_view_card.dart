import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class EstateViewCard extends StatelessWidget {
  const EstateViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1.sw),
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "assets/images/home_1.jpeg",
              // width: 1.sw,
            ),
          ),
          Positioned(
            bottom: 12.h,
            right: 12.w,
            left: 12.w,
            child: Stack(
              children: [
                ClipRect(
                  // Confine he blur effect to the container
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 1.sw,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: whiteColor
                            .withOpacity(0.5), // Adjust opacity as needed
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: const Center(
                        child: Text("Luxury Apartment"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: const ShapeDecoration(
                      color: whiteColor,
                      shape: CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.chevron_right,
                      color: faintGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EstateView extends StatelessWidget {
  const EstateView({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(25.r),
      ),
      width: 1.sw,
      child: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          image: const DecorationImage(
            image: AssetImage(
              "assets/images/home_1.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 12.h,
              right: 12.w,
              left: 12.w,
              child: ClipRect(
                child: Stack(
                  children: [
                    ClipRect(
                      // Confine he blur effect to the container
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          width: 1.sw,
                          padding: EdgeInsets.all(12.w),
                          decoration: BoxDecoration(
                            color: whiteColor
                                .withOpacity(0.5), // Adjust opacity as needed
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          child: Center(
                            child: Text("Home, $index"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: const ShapeDecoration(
                          color: whiteColor,
                          shape: CircleBorder(),
                        ),
                        child: const Icon(
                          Icons.chevron_right,
                          color: faintGreyColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
