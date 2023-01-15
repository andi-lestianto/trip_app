import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class TripColor {
  static Color primary = '2F3B61'.toColor();
  static Color primaryAcc = '252D4A'.toColor();
  static Color white = 'ffffff'.toColor();
  static Color black = '000000'.toColor();
  static Color graytf = 'E8E8E8'.toColor();
}

class TripText {
  static TextStyle sectionTitle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, fontSize: 20, color: TripColor.primary);
}
