import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/theme/tripcolor.dart';

class AppBarTitleWidget extends StatelessWidget {
  final bool isBack;
  final String title;
  const AppBarTitleWidget(
      {required this.title, required this.isBack, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 50,
        child: Row(
          children: [
            if (isBack)
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset('assets/ic_back.png')),
              ),
            Expanded(
                child: Text(
              title.toUpperCase(),
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: TripColor.white),
            ))
          ],
        ),
      ),
    );
  }
}
