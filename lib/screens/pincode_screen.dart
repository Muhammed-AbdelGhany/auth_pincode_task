import 'package:auth_pincode_task/screens/verfied_screen.dart';
import 'package:auth_pincode_task/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PincodeScrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                          'Wir haben Ihnen soeben eine Bestätigungsmail mit einem Prüfcode gesendet',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: Colors.black, fontSize: 18, height: 1)),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      onChanged: null,
                      textStyle: GoogleFonts.montserrat(
                          color: Theme.of(context).primaryColor, fontSize: 46),
                      pinTheme: PinTheme(
                        inactiveColor: Colors.grey,
                        fieldHeight: 56,
                        fieldWidth: 50,
                        activeColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Der Code wurde an folgende E-Mail Adresse gesendet:',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 11,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text('max.muster@test.com',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bearbeiten ',
                          style: GoogleFonts.montserrat(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Erneut senden',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => VierfiedScreen()));
                      },
                      child: Container(
                        width: 127,
                        height: 36,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor),
                        child: Text('Verifizieren',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            Container(
              height: 49,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (ctx) => VierfiedScreen()));
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).accentColor),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
