import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatelessWidget {
  final String serviceName;
  //final String navigatorRouteName;
  final Widget widgetName;
  final String imagePath;
  final String serviceDescription;
  final String serviceNumber;

  const ServiceCard({
    super.key,
    required this.serviceName,
    //required this.navigatorRouteName,
    required this.widgetName,
    required this.imagePath,
    required this.serviceDescription,
    required this.serviceNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 405,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagePath), fit: BoxFit.fill, opacity: 100),
          color: Colors.black,
          border: Border.all(color: Colors.white38, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        serviceNumber,
                        style: const TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ))
              ],
            ),
            Container(
              height: 75,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(color: Colors.yellow, width: 0.5),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          serviceName,
                          style: GoogleFonts.urbanist(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => widgetName,
                                  fullscreenDialog: true,
                                  settings: RouteSettings(arguments: {''})));
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border:
                                  Border.all(color: Colors.yellow, width: 0.75),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.yellowAccent,
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
