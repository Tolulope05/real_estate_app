import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

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
        child: FadeInLeft(
          child: const Center(
            child: Text(
              "Coming Soon",
              style: TextStyle(
                color: blackColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
