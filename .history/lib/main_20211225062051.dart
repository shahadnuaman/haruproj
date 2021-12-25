import 'package:flutter/material.dart';
import 'package:harubom/detailsscreen.dart';
import 'package:harubom/home.dart';
import 'package:harubom/loginscreen.dart';
import 'package:harubom/registration.dart';
import 'package:harubom/route.dart';
import 'package:harubom/screens/cart_screen.dart';
import 'package:harubom/sidebarmenu.dart';
import 'package:harubom/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: SplashScreen.routeName,
      routes: {
        "/splash": (context) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/Registration"': (context) => const RegistrationScreen(),
        '/home': (context) => const Home(),
        '/details': (context) => const DetailsScreen(),
        '/navbar': (context) => NavDrawer(),
        '/cart': (context) => CartScreen()
      },
    );
  }
}
