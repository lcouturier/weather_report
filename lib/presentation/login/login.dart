import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:weather_report/core/extensions.dart';
import 'package:weather_report/core/navigation/app_router.dart';
import 'package:weather_report/core/themes/images_path.dart';
import 'package:weather_report/presentation/widgets/core/extensions.dart';
import 'package:weather_report/presentation/widgets/core/padding_extensions.dart';
import 'package:weather_report/presentation/widgets/single_child_scroll_view_fixed_bottom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool isValidEmail(String? value) {
  return (value != null) &&
      RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
          .hasMatch(value);
}

bool isPasswordValid(String? value) {
  return (value != null) && value.length >= 8 && value.hasUpper && value.hasLower && value.hasNumber;
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollViewWithFixedBottom(
        top: Column(
          children: <Widget>[
            Center(
              child: SizedBox(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset(ImagePaths.login)),
            ).paddingOnly(top: 60),
            const SizedBox(
              height: 48,
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Veuillez saisir un email valide',
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (!isValidEmail(value)) {
                  return 'E-mail incorrect';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ).paddingSymmetric(horizontal: 24),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
                hintText: 'Entrez votre mot de passe',
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (!isPasswordValid(value)) {
                  return 'Mot de passe incorrect';
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
            ).padding(24.left + 24.right + 15.top),
          ],
        ),
        bottom: TextButton(
          onPressed: () {
            context.pushRoute(WeatherListRoute(name: _emailController.text));
          },
          child: Container(
            padding: 12.all,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              color: Colors.blueGrey.shade800,
            ),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ).paddingAll(18),
      ),
    );
  }
}
