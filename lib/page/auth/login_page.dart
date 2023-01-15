import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:trip_app/page/auth/register_page.dart';
import 'package:trip_app/page/home/home_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/textinput_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 250,
            color: TripColor.primary,
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Trip App',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: TripColor.white,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.fromLTRB(30, 65, 30, 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: TripColor.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  offset: const Offset(2, 1))
                            ],
                            color: TripColor.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 75,
                              ),
                              const TextInputWidget(title: 'Alamat Email'),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextInputWidget(title: 'Password'),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Lupa Password?',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: TripColor.primary),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: TripColor.primary,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                      onPressed: () {
                                        Get.off(const HomePage());
                                      },
                                      child: Text(
                                        'LOGIN',
                                        style: GoogleFonts.poppins(),
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tidak punya akun?',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.off(() => const RegisterPage());
                                    },
                                    child: Text(
                                      'Daftar!',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          color: TripColor.primary),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                      Center(child: Image.asset('assets/ic_login.png'))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Atau masuk dengan',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: '4267B2'.toColor(),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: TripColor.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'FACEBOOK',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: 'DB4437'.toColor(),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.g_mobiledata),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'GOOGLE',
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
