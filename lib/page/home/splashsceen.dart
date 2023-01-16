import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:trip_app/page/auth/login_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    redirect();
    super.initState();
  }

  redirect() async {
    await Future.delayed(const Duration(seconds: 5))
        .then((value) => Get.offAll(() => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 200, width: 200, child: Image.asset('assets/logo.png')),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Trip App',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: '0188F1'.toColor()),
            ),
            Text(
              'Liburan Makin Nyaman',
              style: GoogleFonts.poppins(
                  fontSize: 18, color: TripColor.black.withOpacity(0.5)),
            )
          ],
        ),
      )),
    );
  }
}
