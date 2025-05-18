import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
              shadows: const [
                Shadow(
                    blurRadius: 2,
                    color: Colors.yellow,
                    offset: Offset.infinite)
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //title
            Text("D E L I O   S H O P",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),

            SizedBox(
              height: 25,
            ),
            //subtitle
            Text(
              "From store to door — Delio Shop",
              style: GoogleFonts.podkova(fontSize: 20),
            ),
            SizedBox(
              height: 200,
            ),
            // button
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(08.0)),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('shop');
                },
                child: const SizedBox(
                    height: 55,
                    child: Icon(
                        color: Colors.black,
                        size: 35,
                        Icons.arrow_forward_outlined)))
          ],
        ),
      ),
    );
  }
}
