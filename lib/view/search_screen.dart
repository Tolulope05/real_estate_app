import 'dart:developer';
import 'dart:math' as math;

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate_app/constants/colors.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final ValueNotifier<int?> _selectedIndex = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    log("SearchScreen build"); // Avoiding rebuild as much as possible
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/map_view.jpeg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: kToolbarHeight + 16.h),
              ZoomIn(
                animate: true,
                duration: const Duration(seconds: 1),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: "Saint Petersburg",
                          hintStyle: TextStyle(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            size: 18.sp,
                            color: blackColor,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.all(10.w),
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: const Icon(Iconsax.setting_4),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 100.h,
                      left: 60.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150.h,
                      left: 80.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170.h,
                      right: 50.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 250.h,
                      right: 50.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 270.h,
                      left: 50.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 350.h,
                      right: 50.w,
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 3),
                        child: ValueListenableBuilder<int?>(
                          valueListenable: _selectedIndex,
                          builder: (context, selectedIndex, child) {
                            return AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear,
                              padding: _getPadding(selectedIndex),
                              decoration: _getBoxDecoration(),
                              child: _buildContent(selectedIndex),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ZoomIn(
                animate: true,
                duration: const Duration(seconds: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTapDown: (details) {
                        showMenu(
                          context: context,
                          position: RelativeRect.fromLTRB(
                            details.globalPosition.dx,
                            details.globalPosition.dy,
                            details.globalPosition.dx,
                            details.globalPosition.dy,
                          ),
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          items: [
                            PopupMenuItem(
                              child: ValueListenableBuilder<int?>(
                                valueListenable: _selectedIndex,
                                builder: (context, selectedIndex, child) {
                                  return ListTile(
                                    onTap: () {
                                      _selectedIndex.value = 0;
                                      Navigator.pop(context);
                                    },
                                    leading: Icon(
                                      Iconsax.shield_tick,
                                      color: selectedIndex == 0
                                          ? primaryColor
                                          : blackColor,
                                    ),
                                    title: Text(
                                      "Cosy areas",
                                      style: TextStyle(
                                        color: selectedIndex == 0
                                            ? primaryColor
                                            : blackColor,
                                      ),
                                    ),
                                    visualDensity: VisualDensity.compact,
                                  );
                                },
                              ),
                            ),
                            PopupMenuItem(
                              child: ValueListenableBuilder<int?>(
                                  valueListenable: _selectedIndex,
                                  builder: (context, selectedIndex, child) {
                                    return ListTile(
                                      onTap: () {
                                        _selectedIndex.value = 1;
                                        Navigator.pop(context);
                                      },
                                      leading: Icon(
                                        Iconsax.wallet_3,
                                        color: selectedIndex == 1
                                            ? primaryColor
                                            : blackColor,
                                      ),
                                      title: Text(
                                        "Price",
                                        style: TextStyle(
                                          color: selectedIndex == 1
                                              ? primaryColor
                                              : blackColor,
                                        ),
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    );
                                  }),
                            ),
                            PopupMenuItem(
                              child: ValueListenableBuilder<int?>(
                                  valueListenable: _selectedIndex,
                                  builder: (context, selectedIndex, child) {
                                    return ListTile(
                                      onTap: () {
                                        _selectedIndex.value = 2;
                                        Navigator.pop(context);
                                      },
                                      leading: Icon(
                                        Iconsax.bag,
                                        color: selectedIndex == 2
                                            ? primaryColor
                                            : blackColor,
                                      ),
                                      title: Text(
                                        "Infrastructure",
                                        style: TextStyle(
                                          color: selectedIndex == 2
                                              ? primaryColor
                                              : blackColor,
                                        ),
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    );
                                  }),
                            ),
                            PopupMenuItem(
                              child: ValueListenableBuilder<int?>(
                                  valueListenable: _selectedIndex,
                                  builder: (context, selectedIndex, child) {
                                    return ListTile(
                                      onTap: () {
                                        _selectedIndex.value = 3;
                                        Navigator.pop(context);
                                      },
                                      leading: Icon(
                                        Iconsax.layer,
                                        color: selectedIndex == 3
                                            ? primaryColor
                                            : blackColor,
                                      ),
                                      title: Text(
                                        "Without any layer",
                                        style: TextStyle(
                                          color: selectedIndex == 3
                                              ? primaryColor
                                              : blackColor,
                                        ),
                                      ),
                                      visualDensity: VisualDensity.compact,
                                    );
                                  }),
                            ),
                          ],
                        );
                      },
                      child: Container(
                        decoration: const ShapeDecoration(
                          color: Colors.white38,
                          shape: CircleBorder(),
                        ),
                        padding: EdgeInsets.all(15.w),
                        child: const Icon(
                          Iconsax.layer,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const ShapeDecoration(
                            color: Colors.white38,
                            shape: CircleBorder(),
                          ),
                          padding: EdgeInsets.all(15.w),
                          child: const Icon(
                            Iconsax.send_2,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          padding: EdgeInsets.all(15.w),
                          child: Row(
                            children: [
                              const Icon(
                                Iconsax.textalign_left,
                                color: whiteColor,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "List of variants",
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: kBottomNavigationBarHeight +
                    12.h + // 12.h is the bottom margin
                    50.h, // 50.h is the height of the CBNB
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(int? selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return ZoomIn(
          animate: true,
          duration: const Duration(seconds: 1),
          child: Icon(
            Iconsax.buliding,
            size: 20.sp,
            color: whiteColor,
          ),
        );
      case 1:
        return ZoomIn(
          animate: true,
          duration: const Duration(seconds: 1),
          child: Text(
            _generateRandomAmount(),
            style: const TextStyle(
              // fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
        );
      case 2:
        return ZoomIn(
          animate: true,
          duration: const Duration(seconds: 1),
          child: Icon(
            Iconsax.buliding,
            size: 20.sp,
            color: whiteColor,
          ),
        );
      default:
        return ZoomIn(
          animate: true,
          duration: const Duration(seconds: 1),
          child: Icon(
            Iconsax.buliding,
            size: 20.sp,
            color: whiteColor,
          ),
        );
    }
  }

  String _generateRandomAmount() {
    final random = math.Random();
    return "${(random.nextInt(100) + 1).toString()} mn P";
  }

  EdgeInsets _getPadding(int? selectedIndex) {
    return EdgeInsets.symmetric(
      vertical: 12.h,
      horizontal: selectedIndex == 1 ? 16.w : 12.w,
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
        bottomRight: Radius.circular(12.r),
      ),
    );
  }
}
