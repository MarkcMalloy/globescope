import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    const dashboardTopPurple = Color(0xff8c4af2);
    const dashboardMiddlePurple = Color(0xff7751f4);
    const dashboardBottomPurple = Color(0xff5c5bf7);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  dashboardTopPurple,
                  dashboardMiddlePurple,
                  dashboardBottomPurple
                ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                child: Column(
                  children: [
                    DrawerHeader(
                        child: Image.asset("assets/telescope-icon-vector.png")),
                    const ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text(
                        "Dashboard",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
