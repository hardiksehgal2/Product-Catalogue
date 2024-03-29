import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/pages/cart_page.dart';
import 'package:untitled5/pages/home_page.dart';
import 'package:untitled5/pages/login_page.dart';
import 'package:untitled5/utils/routes.dart';
import 'package:untitled5/widgets/themes.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light  ,
      theme:MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute:  MyRoutes.homeRoute,
      routes: {
        "/":(context)=>CartPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),
        MyRoutes.cartRoute:(context)=>CartPage(),
      },
    );
  }
}
