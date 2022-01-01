import 'package:flutter/material.dart';
import 'package:harubom/helpers.dart';
import 'package:harubom/home.dart';
import 'package:harubom/models/Cart.dart';
import 'package:harubom/models/items.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Color(0XFFA0054F)),
        onPressed: () => {hpush(context, Home())},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 15.0),
          //   child: Icon(
          //     Icons.arrow_back,
          //     color: Color(0XFFA0054F),
          //     size: 25,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 170.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(" العناصر " "${0}",
                //     style: TextStyle(
                //         fontFamily: 'Cairo',
                //         fontSize: 15,
                //         color: Color(0XFF8F8888))

                //     ///Theme.of(context).textTheme.caption,
                //     ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "السلة",
                  style: TextStyle(
                      color: Color(0XFFA0054F),
                      fontFamily: 'Cairo',
                      fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
