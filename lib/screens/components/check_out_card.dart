// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:harubom/home.dart';

import '../../helpers.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  Widget _buildPopupDialog(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color(0xFFFFFF),
        borderRadius: new BorderRadius.all(new Radius.circular(62.0)),
      ),
      child: AlertDialog(
        backgroundColor: Color(0xFFD7D2D2),

        title: const Text(
          'تم الحجز بنجاح',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'cairo'),
        ),
        // ignore: unnecessary_new
        content: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  " IQD 213 ",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'cairo',
                      color: const Color(0xffA0054F),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "السعر الكلي : ",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'cairo',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: Theme.of(context).primaryColor,
            child: Center(
                child: SizedBox(
              height: 50,
              width: 100,
              child: Center(
                  child: SizedBox(
                width: 70,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF458CAA),
                      ////    primary: Color(0xffA0054F),
                      ///  onSurface: Color(0xffA0054F),
                      alignment: Alignment.topCenter,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context));
                    },
                    child: InkWell(
                      child: const Text(
                        'تم',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'Cairo',
                            fontSize: 18),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    )),
              )),
            )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: const Color(0xffDFEEF4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: const Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Container(
                //   padding: EdgeInsets.all(10),
                //   height: (40),
                //   width: (40),
                //   decoration: BoxDecoration(
                //     color: Color(0xFFF5F6F9),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: SvgPicture.asset("assets/icons/receipt.svg"),
                // ),
                const Spacer(),

                ///  Text("Add voucher code"),
                // const SizedBox(width: 10),
                // Icon(
                //   Icons.arrow_forward_ios,
                //   size: 12,
                //   color: Colors.black,
                // )
              ],
            ),
            const SizedBox(height: 20),
            Column(
              ///crossAxisAlignment: CrossAxisAlignment.center,

              /// mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\337.15 IQD",
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      // ignore: prefer_const_literals_to_create_immutables
                    ),
                    SizedBox(width: 8),
                    const Text(": السعر الكلي",
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 18.0,
                            color: Color(0xffA0054F))),
                  ],
                ),

                const SizedBox(height: 30),
                SizedBox(
                  height: 48,
                  width: 349,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF458CAA),
                        ////    primary: Color(0xffA0054F),
                        ///  onSurface: Color(0xffA0054F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context));
                      },
                      child: const Text(
                        'حجز',
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'Cairo',
                            fontSize: 20),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
