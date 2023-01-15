import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/theme/tripcolor.dart';

class SearchAppBarWidget extends StatelessWidget {
  final bool isBack;
  const SearchAppBarWidget({required this.isBack, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
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
              child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintText: 'Mau kemana hari ini?',
                hintStyle: GoogleFonts.poppins(),
                prefixIcon: Image.asset('assets/ic_search.png'),
                fillColor: TripColor.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10))),
          ))
        ],
      ),
    );
  }
}
