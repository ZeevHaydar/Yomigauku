import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "images/app_icon.svg", // Replace with the actual path to your SVG file
              height: 100, // Set an appropriate height
              width: 100, // Set an appropriate width
            ),
            const SizedBox(height: 16),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}