import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditRepair extends StatelessWidget {
  static const String routeName = '/creditaudit';
  const CreditRepair({super.key});

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
                              image:
                                  AssetImage('lib/assets/credit_repair.webp'),
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
                          'Credit Repair',
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
                      'Your credit rating impacts you in more ways than you know and will affect your lifestyle. Our process helps remove inaccurate and unverifiable information from our client’s credit reports, giving them the chance to find their financial freedom. We evaluate your credit reports to determine if you are in need of credit repair. We then discuss our EduCredit programs and together determine which option is best for your specific information.\n\nOnce you are enrolled, we conduct an in-depth, line by line Credit Analysis of your 3 bureau credit report, including all accounts, balances, utilization, credit mix, debts, and factors impacting your credit scores. We then develop a fully customized plan based on the credit file that puts you on track to reaching your credit and financial goals. We send you a complete breakdown of the Credit Analysis and Action Plan and discuss this in detail during your New Client Credit Discovery Call. Under various consumer protection laws, we demand validation and verification of potentially erroneous information from the credit bureaus, creditors, and collector agencies to begin your credit restoration process.\n\nOur experienced experts take care of the work for you. Using a proven system that will get you the results you want in the fastest time possible, we do the work so you can sit back and enjoy the results!',
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
