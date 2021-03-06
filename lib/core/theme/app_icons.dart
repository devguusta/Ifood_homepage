import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pathIcons = 'assets/icons/';

class AppIcons {
  static const arrowDown = '${pathIcons}arrow_down.svg';
}

class AppIcon extends StatelessWidget {
  final String icon;
  final Size size;
  final Color color;
  const AppIcon(
    this.icon, {
    Key? key,
   required this.size, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size.height ,
      width: size.width ,
      color: color,
    );
  }
}
