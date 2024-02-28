import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Text(
            'Verity By Saji provides services for credit restoration and education. For each customer, we are devoted to achieving the greatest outcomes imaginable. Our team of experts does the credit audit, examines your account activity, and rebuilds your credit score for a better standard of living.',
            style: GoogleFonts.urbanist(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 15,
                height: 1.4),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () async {
              final Uri url = Uri.parse('https://www.veritycredit.net/blank-3');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            child: Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 1, color: Colors.yellow),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                  child: Text(
                'Learn More',
                style: GoogleFonts.urbanist(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              )),
            ),
          )
        ],
      ),
    );
  }
}
