import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 138,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffD5BC32),
            Color(0xff26835C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        width: 166,
        height: 84,
        child: Text('FIRMEN LOGO',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                height: 1)),
      ),
    );
  }
}
