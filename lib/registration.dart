import 'package:flutter/material.dart';

import 'loginscreen.dart';

class RegistrationScreen extends StatelessWidget {
  static String routeName = "/Registration";
  ////

  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(children: [
          const SizedBox(height: 30),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'images/logo.png',
              height: 100,
            ),
            // ignore: sized_box_for_whitespace
            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
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
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: Color(0xff458CAA)),
                  ),
                  // autofocus: false,
                )),
            const SizedBox(height: 15),
            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
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
                    hintText: 'الاسم الكامل ',
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: const Color(0xff458CAA)),
                  ),
                  // autofocus: false,
                )),
            const SizedBox(height: 15),

            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'رقم الهاتف ',
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: Color(0xff458CAA)),
                    suffixIcon: const Icon(
                      Icons.phone_android,
                      textDirection: TextDirection.rtl,
                      color: Color(0xff458CAA),
                    ),
                  ),
                  autofocus: false,
                )),
            const SizedBox(height: 15),

            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: ' العنوان',
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: Color(0xff458CAA)),
                    suffixIcon: const Icon(
                      Icons.location_city,
                      textDirection: TextDirection.rtl,
                      color: Color(0xff458CAA),
                    ),
                  ),
                  autofocus: false,
                )),
            const SizedBox(height: 15),

            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'كلمة المرور',
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: Color(0xff458CAA)),
                    suffixIcon: const Icon(
                      Icons.lock,
                      textDirection: TextDirection.rtl,
                      color: const Color(0xff458CAA),
                    ),
                  ),
                  autofocus: false,
                )),
            const SizedBox(height: 15),
            Container(
                width: 350,
                height: 54,
                child: TextField(
                  style: const TextStyle(
                      fontFamily: 'Cairo', color: Color(0xffA0054F)),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'تاكيد كلمة المرور ',
                    hintStyle: const TextStyle(
                        fontSize: 15.0, color: Color(0xff458CAA)),
                    suffixIcon: const Icon(
                      Icons.shield,
                      textDirection: TextDirection.rtl,
                      color: const Color(0xff458CAA),
                    ),
                  ),
                  autofocus: false,
                )),
            const SizedBox(height: 15),

            SizedBox(
              height: 54,
              width: 350,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF458CAA),
                    primary: Colors.blue,
                    onSurface: Color(0xffA0054F),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  onPressed: () => {Navigator.pushNamed(context, '/login')},
                  child: const Text(
                    'تسجيل ',
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Cairo',
                        fontSize: 20),
                  )),
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => {Navigator.pushNamed(context, '/login')},
                  child: const Text(
                    " سجل دخولك",
                    style: const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 18,
                        color: const Color(0xffA0054F)),
                  ),
                ),
                const Text(
                  "  تمتلك  حساب ؟ ",
                  style: const TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 18,
                      color: Color(0xff458CAA)),
                ),
              ],
            ),
          ]),
        ])));
  }
}
