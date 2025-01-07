import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CelestialIconSax extends StatelessWidget {
  const CelestialIconSax(
      {Key? key, required this.iconsax, required this.size, required this.tint})
      : super(key: key);
  final IconData iconsax;
  final double size;
  final Color tint;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconsax,
      color: tint,
      size: size,
    );
  }
}

Widget celestialIconImage(String imgUrl, double size) => Image(
      image: AssetImage(imgUrl),
      height: size,
      width: size,
      fit: BoxFit.fill,
    );

Widget celestialIcon(String iconUrl, Color iconColor, bool isTint,
        [double size = 24]) =>
    SvgPicture.asset(
      iconUrl,
      color: isTint ? iconColor : null,
      width: size,
      height: size,
    );
