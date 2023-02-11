import 'package:flutter/material.dart';
import 'package:weather_report/core/data/weather_token.dart';
import 'package:weather_report/core/dio_client.dart';
import 'package:weather_report/presentation/widgets/core/extensions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authValue = 'Basic ${'perso_couturier:0rF8SutAc1'.encodeBase64()}';

    // final response = DioClient().get(
    //     'https://api.meteomatics.com/2023-02-11T00:00:00Z--2023-02-14T00:00:00Z:PT1H/weather_symbol_24h:idx,t_2m:C/48.8249279,2.3980539/json');

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
