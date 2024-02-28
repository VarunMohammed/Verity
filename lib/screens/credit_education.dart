import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditEducation extends StatelessWidget {
  static const String routeName = '/creditaudit';
  const CreditEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
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
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 374,
                      height: 460,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'lib/assets/credit_education.webp'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                        color: Colors.black54,
                                        border: Border.all(
                                          width: 1,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: const Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Education',
                          style: GoogleFonts.urbanist(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "At Verity, We empowering families and individuals by educating them on the basics of money and awareness of what is preventing families from achieving financial peace of mind as well as getting ahead financially, and providing services for them to do so, Traditional financial education has left many middle-class Americans in a state of fear, desperation, and uncertainty. Our guide is positioning families with the proper education for families to protect themselves from the next financial downfalls to come. We have been able to help position many people by showing them how to get out of debt, save in tax advantage vehicles, and set their families up for success so that they don’t lose any of their hard earned money. We are devoted to showing people how we made our clients maintained a 780 credit score during a pandemic so that they can do it too!",
                      style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
