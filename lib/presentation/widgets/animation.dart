import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLottie extends StatelessWidget {
  final String animationPath;
  final double? width;
  final double? height;

  const AnimationLottie(
    this.animationPath, {
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(animationPath, width: width, height: height);
  }
}
