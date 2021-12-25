// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:harubom/helpers.dart';
import 'package:harubom/registration.dart';

import 'home.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";

  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const SizedBox(height: 90),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'images/logo.png',
          height: 170,
        ),
        // ignore: sized_box_for_whitespace
        const SizedBox(height: 30),
        Container(
            width: 350,
            height: 54,
            child: TextField(
              style: const TextStyle(fontFamily: 'Cairo'),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                hintTextDirection: TextDirection.rtl,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                suffixIcon: const Icon(
                  Icons.person,
                  textDirection: TextDirection.rtl,
                  color: Color(0xff458CAA),
                ),
                hintText: 'اسم المستخدم',
                hintStyle:
                    const TextStyle(fontSize: 15.0, color: Color(0xff458CAA)),
              ),
              // autofocus: false,
            )),
        const SizedBox(height: 15),
        Container(
            width: 350,
            height: 54,
            child: TextField(
              style: const TextStyle(fontFamily: 'Cairo', color: Colors.red),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'كلمة المرور',
                hintStyle:
                    const TextStyle(fontSize: 15.0, color: Color(0xff458CAA)),
                suffixIcon: const Icon(
                  Icons.lock,
                  textDirection: TextDirection.rtl,
                  color: Color(0xff458CAA),
                ),
              ),
              autofocus: false,
            )),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 45.0),
          child: Container(
            alignment: AlignmentDirectional.bottomEnd,
            child: const Text(
              " نسيت كلمة المرور ؟",
              textAlign: TextAlign.right,
              style: const TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 14,
                  color: const Color(0xffA0054F)),
            ),
          ),
        ),
        const SizedBox(height: 20),

        SizedBox(
          height: 54,
          width: 350,
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF458CAA),
                primary: Colors.blue,
                onSurface: Colors.red,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
              ),
              //! TODO NEED TO FIX THIS LATTER
              onPressed: () => hpush(context, Home()),

              // onPressed: () {
              //   Navigator.pushNamed(context, '/home');
              // },
              child: const Text(
                'تسجيل دخول',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Cairo',
                    fontSize: 20),
              )),
        ),

        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => {
                // Navigator.of(context).pushNamed('/Registration')
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false)
              },
              child: const Text(
                " سجل الان",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 18,
                    color: Color(0xffA0054F)),
              ),
            ),
            const Text(
              "  ليس لديك حساب ؟ ",
              style: const TextStyle(
                  fontFamily: 'Cairo', fontSize: 18, color: Color(0xff458CAA)),
            ),
          ],
        ),
      ]),
    ]));
  }
}
