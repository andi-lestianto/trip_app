import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/bottomnavbar_widget.dart';
import 'package:trip_app/page/widget/homemenubutton_widget.dart';
import 'package:trip_app/page/widget/searchappbar_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Map<String, dynamic>> dataWisata = [
    {
      'name': 'Bumi Perkemahan Sekipan',
      'rating': '4.8',
      'distance': '10 Km',
      'price': 'Rp. 15000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: TripColor.primary,
          ),
          const SearchAppBarWidget(isBack: true),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                color: TripColor.white),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Objek Wisata Terdekat',
                      style: TripText.sectionTitle,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: TripColor.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Filter',
                              style: GoogleFonts.poppins(
                                color: TripColor.white,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                      color: TripColor.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Jumantono, Kab. Karanganyar',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: TripColor.white),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: const BottomNavbarWidget(),
    );
  }
}
