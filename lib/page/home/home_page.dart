import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/category/category_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/bottomnavbar_widget.dart';
import 'package:trip_app/page/widget/homemenubutton_widget.dart';
import 'package:trip_app/page/widget/searchappbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: TripColor.primary,
          ),
          const SearchAppBarWidget(isBack: false),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                      'Hi Andi!',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: TripColor.primary),
                    ),
                    Image.asset('assets/ic_profilepict.png')
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
                SizedBox(
                    height: MediaQuery.of(context).size.width * 0.37,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            child: Image.asset(
                              'assets/banner_1.png',
                              fit: BoxFit.fitWidth,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            child: Image.asset(
                              'assets/banner_2.png',
                              fit: BoxFit.fitWidth,
                            )),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeMenuButtonWidget(
                      iconPath: 'assets/ic_location.png',
                      title: 'Terdekat',
                      hexColor: 'FF5252',
                      onTap: () {
                        Get.to(() => const CategoryPage());
                      },
                    ),
                    HomeMenuButtonWidget(
                      iconPath: 'assets/ic_star.png',
                      title: 'Populer',
                      hexColor: 'FFEA56',
                      onTap: () {},
                    ),
                    HomeMenuButtonWidget(
                      iconPath: 'assets/ic_tickets.png',
                      title: 'Beli Tiket',
                      hexColor: '72A9FF',
                      onTap: () {},
                    ),
                    HomeMenuButtonWidget(
                      iconPath: 'assets/ic_history.png',
                      title: 'Riwayat',
                      hexColor: '66C470',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Berita Terbaru',
                  style: TripText.sectionTitle,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: TripColor.whiteGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Laborum pariatur qui sit',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Image.asset(
                                'assets/det_postimage.png',
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Adipisicing minim qui amet in qui qui adipisicing consectetur ea adipisicing officia esse laboris.',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Baca Selengkapnya',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: TripColor.whiteGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Laborum pariatur qui sit',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Image.asset(
                                'assets/det_postimage.png',
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Adipisicing minim qui amet in qui qui adipisicing consectetur ea adipisicing officia esse laboris.',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Baca Selengkapnya',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: TripColor.whiteGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Laborum pariatur qui sit',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Image.asset(
                                'assets/det_postimage.png',
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Adipisicing minim qui amet in qui qui adipisicing consectetur ea adipisicing officia esse laboris.',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Baca Selengkapnya',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: const BottomNavbarWidget(),
    );
  }
}
