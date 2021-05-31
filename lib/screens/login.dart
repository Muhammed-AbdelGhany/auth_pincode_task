import 'package:auth_pincode_task/screens/register.dart';
import 'package:auth_pincode_task/widgets/header.dart';
import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _emailAdress = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            )),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black54,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: 120,
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: Column(
                      children: [
                        TextFormField(
                          key: ValueKey('email'),
                          textAlign: TextAlign.center,
                          validator: (value) => AutoValidate.email(value)
                              ? null
                              : 'Enter a valid Email',
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Benutzername",
                            icon: Icon(Icons.person_outlined,
                                color: Theme.of(context).primaryColor),
                          ),
                          onSaved: (newValue) => _emailAdress = newValue,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          key: ValueKey('password'),
                          textAlign: TextAlign.center,
                          validator: (value) => AutoValidate.password(value)
                              ? null
                              : 'Enter a valid Password, EX: Ss123456',
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Passwort",
                            icon: Icon(Icons.lock_outline_rounded,
                                color: Theme.of(context).primaryColor),
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          ),
                          onSaved: (newValue) => _password = newValue,
                        ),
                        SizedBox(
                          height: 105,
                        ),
                        Container(
                          width: double.infinity,
                          height: 36,
                          alignment: Alignment.center,
                          child: Text('Eniloggen',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Theme.of(context).primaryColor,
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Zugangsdaten vergessen ?',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 46,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => RegisterScreen()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 36,
                            alignment: Alignment.center,
                            child: Text('Jetzt Registrieren',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).primaryColor,
                              border: Border.all(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
