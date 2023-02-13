import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String assetName;
  final Color? colorTint;
  final double? height;
  final double? width;
  const SvgImage({super.key, required this.assetName, this.colorTint, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "lib/assets/svg/$assetName",
      color: colorTint,
      height: height,
      width: width,
      alignment: Alignment.center,
    );
  }
}
