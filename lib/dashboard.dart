import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:globescope/Dashboard/SideMenu/components/side_menu_button.dart';
import 'package:globescope/Dashboard/SideMenu/side_menu.dart';
import 'package:globescope/config/size_config.dart';
import 'package:globescope/style/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);


  //TODO: START FROM HERE https://youtu.be/BAc5OHF3emU?t=668
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
                  color: AppColors.secondaryBg,
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/calendar.svg',
                              width: 20.0,
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/ring.svg',
                              width: 20.0,
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Row(children: [
                            CircleAvatar(radius: 17, backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1607778549095710721/WZuuQfiT_400x400.jpg"),)
                          ],)
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
