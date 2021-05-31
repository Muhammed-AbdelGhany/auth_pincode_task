import 'package:auth_pincode_task/screens/login.dart';
import 'package:auth_pincode_task/screens/pincode_screen.dart';
import 'package:auth_pincode_task/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _checkboxval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            Container(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      DropdownButtonFormField<String>(
                          items: ["Bitte wahlen", "B", "C", "D"]
                              .map((e) => DropdownMenuItem(
                                    child: SizedBox(
                                      width: 200,
                                      child: Text(
                                        e.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (value) {},
                          icon: Icon(Icons.keyboard_arrow_down),
                          decoration: InputDecoration(
                            icon: Icon(Icons.ac_unit, color: Colors.white),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                ),
                                hintText: "Vorname",
                                icon: Icon(Icons.person_outlined,
                                    color: Theme.of(context).primaryColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Flexible(
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                ),
                                hintText: "Nachname",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                          ),
                          hintText: "E-Mail",
                          icon: Icon(Icons.email_outlined,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                          ),
                          hintText: "Handynummer",
                          icon: Icon(Icons.call,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                          ),
                          hintText: "Passwort",
                          icon: Icon(Icons.lock_outline_rounded,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.grey,
                          ),
                          hintText: "Passwort bestatigen",
                          icon: Icon(Icons.lock_outline_rounded,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              value: _checkboxval,
                              onChanged: (bool newVal) {
                                setState(() {
                                  _checkboxval = newVal;
                                });
                              }),
                          Text(
                            "Bitte bestätigen Sie unsere Datenschutzerklärung",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sie sind bereits registriert? ',
                            style: GoogleFonts.montserrat(),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Anmelden',
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
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
                      MaterialPageRoute(builder: (ctx) => PincodeScrren()));
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
