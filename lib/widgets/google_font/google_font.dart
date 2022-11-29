// flutter pub add google_fonts
// https://www.youtube.com/watch?v=w9rB4cnAPIg&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp&index=2
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFont extends StatelessWidget {
  const GoogleFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'dsad',
              style: GoogleFonts.calligraffitti(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            Text(
              'dsad',
              style: GoogleFonts.sairaExtraCondensed(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            Text(
              'dsad',
              style: GoogleFonts.aclonica(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
