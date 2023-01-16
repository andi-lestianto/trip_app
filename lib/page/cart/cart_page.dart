import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/detail/detail_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/bottomnavbar_widget.dart';
import 'package:trip_app/page/widget/searchappbar_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> dataWisata = [
    {
      'name': 'Bumi Perkemahan Sekipan',
      'rating': '4.8',
      'distance': '10 Km',
      'price': 'Rp. 15000',
      'image': 'assets/wisata_sekipan.png'
    },
    {
      'name': 'Air Terjun jumog',
      'rating': '4.8',
      'distance': '17 Km',
      'price': 'Rp. 15000',
      'image': 'assets/wisata_jumog.png'
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
          const SearchAppBarWidget(isBack: false),
          Container(
            margin: const EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                color: TripColor.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Keranjang',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: TripColor.primary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dataWisata.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Get.to(() => DetailPage(
                              detailWisata: dataWisata[index],
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        decoration: BoxDecoration(
                          color: TripColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: TripColor.black.withOpacity(0.1),
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: const Offset(2, 1))
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                child: SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      dataWisata[index]['image'],
                                      fit: BoxFit.cover,
                                    ))),
                            Expanded(
                              child: Container(
                                height: 150,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dataWisata[index]['name'],
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/cat_star.png'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          dataWisata[index]['rating'],
                                          style: GoogleFonts.poppins(),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/cat_pin.png'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          dataWisata[index]['distance'],
                                          style: GoogleFonts.poppins(),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/cat_tiket.png'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          dataWisata[index]['price'],
                                          style: GoogleFonts.poppins(),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 30,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        TripColor.primary,
                                                    elevation: 0),
                                                onPressed: () {},
                                                child: Text(
                                                  'Beli',
                                                  style: GoogleFonts.poppins(),
                                                )),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.red,
                                                  elevation: 0),
                                              onPressed: () {},
                                              child: const Icon(Icons.delete)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
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
