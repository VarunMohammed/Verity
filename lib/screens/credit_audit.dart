import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditAudit extends StatelessWidget {
  static const String routeName = '/creditaudit';
  const CreditAudit({super.key});

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
                          'Credit Audit',
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
                      "Everyone’s financial situation doesn’t always require credit repair. It is however extremely important to audit your credit reports before applying for credit. When we conduct the credit audit we see the same information your potential creditors will be reviewing and analyze your accounts reporting the same way they would when determining if they will grant you credit. Getting a credit audit will give you a chance to correct any errors or make other moves to improve your credit score before applying.",
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
