import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xffD9DAFC);
    const textColor = Color(0xfffafafa);

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            textTheme: GoogleFonts.montserratTextTheme(
                Theme.of(context).textTheme.apply(bodyColor: textColor))),
        home: const MainPage());
  }
}
