import 'package:flutter/material.dart';
import 'package:weather_report/core/themes/animations_path.dart';
import 'package:weather_report/core/themes/styles.dart';
import 'package:weather_report/presentation/widgets/animation.dart';
import 'package:weather_report/presentation/widgets/core/extensions.dart';
import 'package:weather_report/presentation/widgets/core/padding_extensions.dart';

class WeatherError extends StatelessWidget {
  final VoidCallback onRefresh;
  const WeatherError({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AnimationLottie(
              AnimationPaths.animError,
              width: 180,
              height: 180,
            ),
            const SizedBox(height: 24),
            Text(
              'Ouuuupps',
              style: headlineMediumStyle,
            ).paddingOnly(left: 24, right: 24),
            const SizedBox(height: 24),
            Text(
              "Une erreur est survenue!!!!",
              style: bodyMediumStyle,
            ).paddingOnly(left: 24, right: 24, bottom: 48),
          ],
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: TextButton(
            onPressed: () => onRefresh(),
            child: Container(
              padding: 12.all,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                color: Colors.blueGrey.shade800,
              ),
              child: const Center(
                child: Text(
                  'Relancer',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
