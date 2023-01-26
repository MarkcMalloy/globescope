import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:globescope/style/colors.dart';

class SideMenuButton extends StatelessWidget {
  final String asset;
  final VoidCallback function;
  const SideMenuButton({Key? key, required this.asset, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        function();
      },
      icon: SvgPicture.asset(
        'assets/$asset',
        color: AppColors.iconGray,
      ),
      iconSize: 20,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
    );
  }
}
