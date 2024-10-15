import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.clamp,
            stops: const [0.0, 0.2, 0.4, 1.0],
            colors: bgGradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: const Text(
            "Coming Soon",
            style: TextStyle(
              color: blackColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ).animate().slideX(),
        ),
      ),
    );
  }
}
