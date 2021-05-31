import 'package:flutter/material.dart';

class VierfiedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          'assets/images/verfiedscreen.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
