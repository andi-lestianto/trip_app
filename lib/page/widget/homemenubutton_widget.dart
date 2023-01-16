import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class HomeMenuButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String hexColor;
  final Function onTap;
  const HomeMenuButtonWidget(
      {required this.iconPath,
      required this.title,
      required this.hexColor,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width / 4 - 20,
            width: MediaQuery.of(context).size.width / 4 - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: hexColor.toColor()),
            child: Image.asset(iconPath),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(),
          )
        ],
      ),
    );
  }
}
