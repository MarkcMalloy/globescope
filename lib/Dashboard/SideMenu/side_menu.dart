import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:globescope/config/size_config.dart';
import 'package:globescope/style/colors.dart';

import 'components/side_menu_button.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  void doNothing() {
    print("doing nothing lmao");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      color: AppColors.secondaryBg,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 35,
                height: 35,
                child: SvgPicture.asset('assets/mac-action.svg'),
              ),
            ),
            SideMenuButton(asset: 'home.svg', function: doNothing),
            SideMenuButton(asset: 'pie-chart.svg', function: doNothing),
            SideMenuButton(asset: 'clipboard.svg', function: doNothing),
            SideMenuButton(asset: 'trophy.svg', function: doNothing),
            SideMenuButton(asset: 'invoice.svg', function: doNothing),
            SideMenuButton(asset: 'trophy.svg', function: doNothing),
          ],
        ),
      ),
    );
  }
}
