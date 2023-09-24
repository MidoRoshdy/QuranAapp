import 'package:eqraa/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    handleData(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 134, 70),
      body: Center(
        child: Column(
          children: [
            Divider(
              height: 15.h,
            ),
            Lottie.asset(
              Assets.lottiesplash,
              width: 60.w,
              height: 50.h,
            ),
            Text(
              "EQraa",
              style: GoogleFonts.amiriQuran(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> handleData(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushNamedAndRemoveUntil(App_Routes.homescreen, (route) => false);
  }
}
