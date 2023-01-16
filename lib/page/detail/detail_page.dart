import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/home/home_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/appbartitle_widget.dart';
import 'package:trip_app/page/widget/bottomnavbar_widget.dart';
import 'package:trip_app/page/widget/textinput_widget.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> detailWisata;
  const DetailPage({required this.detailWisata, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> pmethod = ['dn', 'gp', 'ovo', 'etc'];
  String selectedpm = '';

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
                                        const SizedBox(
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
                                        const SizedBox(
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
                              const SizedBox(
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
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                  'Tempor aute duis sunt excepteur ut ut minim incididunt reprehenderit velit Lorem veniam.'),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset('assets/det_chat.png'),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset('assets/det_follow.png'),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: TripColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child:
                                        Image.asset('assets/det_location.png'),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _dialogBuilder(context);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: TripColor.yellow,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset('assets/det_tiket.png'),
                                ),
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
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: (selectedPage == 0
                                  ? TripColor.primary
                                  : TripColor.white),
                              shape: const RoundedRectangleBorder()),
                          onPressed: () {
                            setState(() {
                              selectedPage = 0;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset((selectedPage == 0
                                  ? 'assets/det_newswhite.png'
                                  : 'assets/det_newsdark.png')),
                              const SizedBox(
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
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: (selectedPage == 1
                                  ? TripColor.primary
                                  : TripColor.white),
                              shape: const RoundedRectangleBorder()),
                          onPressed: () {
                            setState(() {
                              selectedPage = 1;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset((selectedPage == 1
                                  ? 'assets/det_reviewwhite.png'
                                  : 'assets/det_reviewdark.png')),
                              const SizedBox(
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
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                            const SizedBox(
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
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            padding: const EdgeInsets.all(20),
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
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Image.asset(
                                                'assets/det_rating.png')),
                                        const SizedBox(
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 2,
                                  color: TripColor.graytf,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Elit minim irure deserunt duis in mollit nisi cillum adipisicing eiusmod veniam aliquip ullamco laboris.')
                              ],
                            ),
                          ),
                          const SizedBox(
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

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          contentPadding: EdgeInsets.zero,
          content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: TripColor.primary,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)))),
                          onPressed: () {},
                          child: Text(
                            'BELI TIKET WISATA',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Tempat Wisata',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextInputWidget(title: 'Jumlah Tiket'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextInputWidget(title: 'Tanggal Kunjungan'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextInputWidget(title: 'Voucher'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Rp. 0',
                            style: GoogleFonts.poppins(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Metode Pembayaran',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: TripColor.graytf,
                              borderRadius: BorderRadius.circular(9)),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Radio(
                                    value: pmethod[0],
                                    groupValue: selectedpm,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedpm = pmethod[0];
                                      });
                                    }),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/pay_dana.png')
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: TripColor.graytf,
                              borderRadius: BorderRadius.circular(9)),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Radio(
                                    value: pmethod[1],
                                    groupValue: selectedpm,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedpm = pmethod[1];
                                      });
                                    }),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/pay_gopay.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: TripColor.graytf,
                              borderRadius: BorderRadius.circular(9)),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Radio(
                                    value: pmethod[2],
                                    groupValue: selectedpm,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedpm = pmethod[2];
                                      });
                                    }),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/pay_ovo.png')
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: TripColor.graytf,
                              borderRadius: BorderRadius.circular(9)),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Radio(
                                    value: pmethod[3],
                                    groupValue: selectedpm,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedpm = pmethod[3];
                                      });
                                    }),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/pay_others.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.amber,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)))),
                          onPressed: () {
                            Get.back();
                            _succesdialog(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/det_tiket.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'KONFIRMASI',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }

  Future<void> _succesdialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.amber,
                  size: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Pembelian Berhasil',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.amber),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.amber,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                      onPressed: () {
                        Get.offAll(() => const HomePage());
                      },
                      child: Text(
                        'Kembali',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
