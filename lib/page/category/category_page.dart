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
      'price': 'Rp. 15000',
      'image': 'assets/wisata_sekipan.png'
    },
    {
      'name': 'Air Terjun Grojogan Sewu',
      'rating': '4.6',
      'distance': '12 Km',
      'price': 'Rp. 15000',
      'image': 'assets/wisata_grojogansewu.png'
    },
    {
      'name': 'The Lawu Park',
      'rating': '4.2',
      'distance': '15 Km',
      'price': 'Rp. 25000',
      'image': 'assets/wisata_lawupark.png'
    },
    {
      'name': 'Air Terjun jumog',
      'rating': '4.8',
      'distance': '17 Km',
      'price': 'Rp. 15000',
      'image': 'assets/wisata_jumog.png'
    },
    {
      'name': 'Intan Pari',
      'rating': '4.0',
      'distance': '15 Km',
      'price': 'Rp. 15000',
      'image': 'assets/wisata_intanpari.png'
    },
    {
      'name': 'Bumi Perkemahan Pleseran',
      'rating': '4.9',
      'distance': '15 Km',
      'price': 'Rp. 10000',
      'image': 'assets/wisata_pleseran.png'
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
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: dataWisata.length,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              child: Container(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset(
                                    dataWisata[index]['image'],
                                    fit: BoxFit.cover,
                                  ))),
                          Expanded(
                            child: Container(
                              height: 150,
                              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
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
                                      SizedBox(
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
                                      SizedBox(
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
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        dataWisata[index]['price'],
                                        style: GoogleFonts.poppins(),
                                      )
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
