import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verity/components/about_card.dart';
import 'package:verity/components/hero_card.dart';
import 'package:verity/components/services_scroll_list.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homescreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(77, 9, 4, 34),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/bgblack.png',
                    ),
                    opacity: 80,
                    fit: BoxFit.fill)),
            child: SafeArea(
              maintainBottomViewPadding: true,
              top: true,
              left: true,
              right: true,
              bottom: false,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Welcome to VCS',
                              style: GoogleFonts.urbanist(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Image.asset(
                              'lib/assets/logo.png',
                              height: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const HeroCard(),
                        const SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'About Us',
                                      style: GoogleFonts.urbanist(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const AboutCard(),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                            Row(children: [
                              Text(
                                'Our Services',
                                style: GoogleFonts.urbanist(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ]),
                            const SizedBox(
                              height: 15,
                            ),
                            //Service iItems
                            const ServiceScrollList(),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //Next Section Here
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
