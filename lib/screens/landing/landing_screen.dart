import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiman_app/components/button.dart';
import 'package:sushiman_app/screens/home/home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // logo
      appBar: AppBar(
        backgroundColor: const Color(0xffb1454a),
        title: Text(
          "SUSHIMAN",
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: const Color(0xffb1454a),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("assets/images/sushi_egg.png"),
            ),

            // title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              "Feel the taste of most populars Japanese foods from anywhere and anytime.",
              style: GoogleFonts.poppins(
                color: Colors.white60,
                fontSize: 15,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // get started button
            MyButton(
              text: "Get Started",
              icon: Icons.arrow_forward,
              onTap: () {
                // navigate
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
