import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_app/page/auth/login_page.dart';
import 'package:trip_app/page/home/home_page.dart';
import 'package:trip_app/page/theme/tripcolor.dart';
import 'package:trip_app/page/widget/textinput_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    'Daftar',
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
                              const TextInputWidget(title: 'Nama Lengkap'),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextInputWidget(title: 'Alamat Email'),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextInputWidget(title: 'Password'),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextInputWidget(
                                  title: 'Ketik Ulang Password'),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Dengan mendaftar, saya menyetujui syarat & ketentuan serta kebijakan privasi',
                                style: GoogleFonts.poppins(
                                    color: TripColor.primary),
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
                                        'DAFTAR',
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
                                    'Punya akun?',
                                    style: GoogleFonts.poppins(),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.off(() => const LoginPage());
                                    },
                                    child: Text(
                                      'Login!',
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
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
