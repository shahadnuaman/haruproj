import 'package:flutter/material.dart';
import 'package:harubom/home.dart';
import 'package:harubom/provider/add_to_cart.dart';
import 'package:harubom/provider/increase_product.dart';
import 'package:harubom/provider/item_provider.dart';
import 'package:harubom/provider/products_provider.dart';
import 'package:harubom/provider/search_provider.dart';
import 'package:harubom/route.dart';
import 'package:harubom/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ProductsProvider>(
          create: (_) => ProductsProvider()),
      ChangeNotifierProvider<SearchProvider>(create: (_) => SearchProvider()),
      ChangeNotifierProvider<AddToCartProvider>(
          create: (_) => AddToCartProvider()),
      ChangeNotifierProvider<IncreaseItemProvider>(
          create: (_) => IncreaseItemProvider()),
      ChangeNotifierProvider<ItemProvider>(create: (_) => ItemProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
  //   return new MaterialPageRoute(
  //     settings: settings,
  //     builder: (ctx) => builder,
  //   );
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: theme(Color(0xFFFF7643)),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: SplashScreen.routeName,
      initialRoute: Home.routeName,
      routes: routes,
      // onGenerateRoute:(arguments){
      //   if(arguments.name==TestScreen.routeName){
      //     final args = arguments.arguments as ScreenArguments;
      //    return _buildRoute(arguments,  TestScreen(args.arguments));
      //   }
      // } ,
    );
  }
}
