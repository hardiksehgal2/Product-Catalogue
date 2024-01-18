import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme {
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
      appBarTheme:const AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color:Colors.deepPurple)
      ),
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static ThemeData darkTheme(BuildContext context)=> ThemeData(
    brightness: Brightness.dark,
    cardColor: Colors.black,
    canvasColor: darkCream,
    appBarTheme:const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color:Colors.deepPurple)
    ),
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static Color darkCream=Vx.gray900;
  static Color lightBlue=Vx.purple300;
  static Color lightBluishColor = Vx.indigo500;
}

