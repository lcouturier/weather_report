import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherImage extends StatelessWidget {
  final String path;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const WeatherImage(
    this.path, {
    this.fit,
    this.width,
    this.height,
    super.key,
  }) : assert(path.length != 0);

  @override
  Widget build(BuildContext context) {
    final imageLoad = path.toLowerCase().contains('http') ? Image.network : Image.asset;
    return imageLoad(
      path,
      fit: fit,
      height: height,
      width: width,
      errorBuilder: (context, error, stackTrace) {
        return SizedBox(
          height: height,
          width: width,
        );
      },
    );
  }
}

Widget svgLoad(
  String assetName, {
  Color? colorTint,
  double? height,
  double? width,
  String? valueKey,
  Alignment? alignment,
}) {
  return SvgPicture.asset(
    "lib/assets/svg/$assetName",
    color: colorTint,
    height: height,
    width: width,
    alignment: alignment ?? Alignment.center,
  );
}
