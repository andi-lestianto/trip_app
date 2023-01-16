import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip_app/page/about/about_page.dart';
import 'package:trip_app/page/cart/cart_page.dart';
import 'package:trip_app/page/home/home_page.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Get.offAll(() => const HomePage());
            },
            child: Image.asset('assets/ic_homemenu.png'),
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(() => const CartPage());
            },
            child: Image.asset('assets/ic_ticketsmenu.png'),
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(() => const AboutPage());
            },
            child: Image.asset('assets/ic_usermenu.png'),
          ),
        ],
      ),
    );
  }
}
