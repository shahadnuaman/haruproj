import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static String routeName = "/test";

  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
