import 'package:flutter/widgets.dart';
import 'package:harubom/home.dart';
import 'package:harubom/loginscreen.dart';
// import 'package:harubom/productscreen.dart';
import 'package:harubom/registration.dart';
import 'package:harubom/screens/cart_screen.dart';
import 'package:harubom/sidebarmenu.dart';
import 'package:harubom/splashscreen.dart';
import 'package:harubom/detailsscreen.dart';

// We use name route
// // All our routes will be available here
// final Map<String, WidgetBuilder> routes =
//   "/splash": (context) => const SplashScreen(),
//   '/login': (context) => const LoginScreen(),
//   '/Registration"': (context) => const RegistrationScreen(),
//   '/home': (context) => const Home(),
//   '/details': (context) => DetailsScreen(),
//   '/navbar': (context) => NavDrawer(),

//   ///ProduuctScreen.routeName: (context) => const ProduuctScreen
//   ///.///test
//

var routes = <String, WidgetBuilder>{
  "/splash": (context) => const SplashScreen(),
  '/login': (context) => const LoginScreen(),
  '/Registration"': (context) => const RegistrationScreen(),
  '/home': (context) => const Home(),
  '/details': (context) => const DetailsScreen(),
  '/navbar': (context) => NavDrawer(),
  '/cart': (context) => CartScreen()
};
