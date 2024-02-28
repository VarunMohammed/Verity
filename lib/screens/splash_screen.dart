//import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verity/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splashscreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 9, 4, 34),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/bgblack.png'),
                    opacity: 50,
                    fit: BoxFit.fill)),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/logo.png',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'VERITY CREDIT SERVICES',
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Credit Repair Experts',
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Florida',
                          style: GoogleFonts.urbanist(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bad Credit Score?',
                                  style: GoogleFonts.urbanist(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                Text(
                                  'Check how to fix',
                                  style: GoogleFonts.urbanist(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, HomeScreen.routeName);
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.secureclientaccess.com/login');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    )
                  ],
                )),
              ),
            ),
          )),
    );
  }
}
