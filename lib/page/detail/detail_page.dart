import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/appbartitle_widget.dart';
import 'package:trip_app/page/widget/bottomnavbar_widget.dart';
import 'package:trip_app/page/widget/homemenubutton_widget.dart';
import 'package:trip_app/page/widget/searchappbar_widget.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> detailWisata;
  const DetailPage({required this.detailWisata, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedPage = 0;
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
          AppBarTitleWidget(
            isBack: true,
            title: widget.detailWisata['name'],
          ),
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
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                            height: 225,
                            width: 150,
                            child: Image.asset(
                              widget.detailWisata['image'],
                              fit: BoxFit.cover,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          widget.detailWisata['rating'],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_follower.png')),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '5234',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.detailWisata['name'],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Tempor aute duis sunt excepteur ut ut minim incididunt reprehenderit velit Lorem veniam.'),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: TripColor.yellow,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child:
                                          Image.asset('assets/det_tiket.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset('assets/det_chat.png'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset('assets/det_follow.png'),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child:
                                        Image.asset('assets/det_location.png'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: TripColor.primary)),
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: (selectedPage == 0
                                  ? TripColor.primary
                                  : TripColor.white),
                              shape: RoundedRectangleBorder()),
                          onPressed: () {
                            setState(() {
                              selectedPage = 0;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.scale(
                                scale: 1.4,
                                child: Image.asset((selectedPage == 0
                                    ? 'assets/det_newswhite.png'
                                    : 'assets/det_newsdark.png')),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Berita',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: (selectedPage == 0
                                        ? TripColor.white
                                        : TripColor.primary)),
                              )
                            ],
                          )),
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: TripColor.primary)),
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: (selectedPage == 1
                                  ? TripColor.primary
                                  : TripColor.white),
                              shape: RoundedRectangleBorder()),
                          onPressed: () {
                            setState(() {
                              selectedPage = 1;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.scale(
                                scale: 1.4,
                                child: Image.asset((selectedPage == 1
                                    ? 'assets/det_reviewwhite.png'
                                    : 'assets/det_reviewdark.png')),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Ulasan',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: (selectedPage == 1
                                        ? TripColor.white
                                        : TripColor.primary)),
                              )
                            ],
                          )),
                    )),
                  ],
                ),
                (selectedPage == 0
                    ? Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: TripColor.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      offset: const Offset(2, 1))
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Laborum pariatur qui sit',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
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
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: TripColor.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      offset: const Offset(2, 1))
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Laborum pariatur qui sit',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
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
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: TripColor.black.withOpacity(0.1),
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      offset: const Offset(2, 1))
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      'Laborum pariatur qui sit',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
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
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    : Expanded(
                        child: ListView(
                        shrinkWrap: true,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: TripColor.whiteGray,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Andi Lestianto',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      )))
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: const BottomNavbarWidget(),
    );
  }
}
