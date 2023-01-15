import 'package:flutter/material.dart';

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
            onTap: () {},
            child: Image.asset('assets/ic_homemenu.png'),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/ic_ticketsmenu.png'),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/ic_usermenu.png'),
          ),
        ],
      ),
    );
  }
}
