import 'package:flutter/material.dart';
import 'package:globescope/dashboard.dart';
import 'package:globescope/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primaryBg
        ),
        home: const Dashboard());
  }
}
