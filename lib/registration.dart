import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
import 'package:http/http.dart' as http;

import 'loginscreen.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = "/Registration";
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  Future Registration(String fullname, phoneno, address, username, password,
      confirmpassword) async {
    try {
      var encodedBody = json.encode({
        'name': fullname,
        'phone_number': phoneno,
        'address1': address,
        'username': username,
        'password1': password,
        'password2': confirmpassword,
      });

      var response = await http.post(Uri.parse(workingUrl + 'api/auth/signup'),
          /////   headers: {'Content-Type': 'application/json'},
          body: encodedBody);
      print(response.body);
      if (response.statusCode == 201) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('تم التسجيل بنجاح');

        ///ss Navigator.pushNamed(context, LoginScreen());
        Navigator.pushNamed(context, '/login');
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

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
                  controller: userController,
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
                  controller: fullnameController,
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
                  controller: phonenoController,
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
                  controller: addressController,
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
                  controller: passwordController,
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
                  controller: confirmpasswordController,
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
                  onPressed: () => Registration(
                        fullnameController.text.toString(),
                        phonenoController.text.toString(),
                        addressController.text.toString(),
                        userController.text.toString(),
                        passwordController.text.toString(),
                        confirmpasswordController.text.toString(),
                      ),
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
