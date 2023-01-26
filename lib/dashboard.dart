import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:globescope/Dashboard/SideMenu/components/side_menu_button.dart';
import 'package:globescope/Dashboard/SideMenu/side_menu.dart';
import 'package:globescope/config/size_config.dart';
import 'package:globescope/style/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: SideMenu()),
            Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondaryBg,
                )),
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
                  color: AppColors.secondary,
                )),
          ],
        ),
      ),
    );
  }
}
