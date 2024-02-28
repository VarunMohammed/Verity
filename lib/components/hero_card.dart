import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 463,
      width: 360,
      //color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.black38,
          border: Border.all(color: Colors.white38, width: 0.75)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'REPAIR YOUR CREDIT FOR A',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  textStyle: const TextStyle(letterSpacing: 1, height: 1)),
            ),
            Text(
              'BETTER FUTURE',
              style: GoogleFonts.montserrat(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  textStyle: const TextStyle(letterSpacing: 1, height: 1)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Let us help you get your credit into better shape. Give us a call today for a FREE consultation.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 195, 195, 195),
                fontWeight: FontWeight.normal,
                fontSize: 16,
                textStyle: const TextStyle(wordSpacing: 0),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'lib/assets/creditcard.png',
              //height: 100,
            )
          ],
        ),
      ),
    );
  }
}
