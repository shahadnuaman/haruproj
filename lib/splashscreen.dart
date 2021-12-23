import 'dart:async';
import 'package:flutter/material.dart';
import 'package:harubom/loginscreen.dart';

void main() => runApp(MaterialApp(
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginScreen()
      },
    ));

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBEFF8),
      body: Center(
        child: Column(
          children: <Widget>[
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              'images/teru.png',
              height: 170,
            ),
            Image.asset(
              'images/text.png',
              width: 350,
            ),
            const Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
