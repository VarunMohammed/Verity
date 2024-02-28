import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCredit extends StatelessWidget {
  static const String routeName = '/businesscredit';
  const BusinessCredit({super.key});

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
                              image: AssetImage('lib/assets/credit_audit.webp'),
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
                          'Business Credit',
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
                      "Is your business Credit Worthy? Are you an entrepreneur or small business owner who understands the importance of building business credit and obtaining funding without putting personal credit or personal assets at risk?\n\nDesigned from the practical, real-world needs we see every day among entrepreneurs and small business owners, our national step-by-step Business Credit Building System and funding engine, which serves over 52,000 entrepreneurs, small business owners, finance professionals, real estate investors, and non-profit organizations, is the premier program to help you build a creditworthy business and obtain the funding you need without having to put your personal credit or personal assets at risk every time.",
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
