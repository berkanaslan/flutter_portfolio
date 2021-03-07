import 'package:flutter/material.dart';
import 'package:flutter_portfolio/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterPortfolio());
}

class FlutterPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Portfolio",
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme.copyWith(
                bodyText2: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFF040404),
                ),
              ),
        ),
      ),
      home: Home(),
    );
  }
}
