import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:globescope/config/size_config.dart';
import 'package:globescope/style/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: dashboardSideMenu()),
            Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight,
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

  Widget dashboardSideMenu(){
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      color: AppColors.secondary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 20),
              child: Center(child: SvgPicture.asset(assetName),),
            )
          ],
        ),
      );,
    );
  }
}
