import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harubom/constants.dart';
import 'package:harubom/models/Product.dart';

//test

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                primary: kPrimaryColor,
                backgroundColor: Colors.white,
                padding: EdgeInsets.zero,
              ),
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 22,
              ),

              // child:  SvgPicture.asset(
              //   "assets/icons/Back ICon.svg",
              //   height: 15,
              // ),
            ),
          ),
          SizedBox(width: 110),
          Center(
            child: Text(
              "المنتج",
              style: TextStyle(
                  fontSize: 25, fontFamily: 'Cairo', color: Color(0XFFA0054F)),
              //Theme.of(context).textTheme.headline6,
              textDirection: TextDirection.rtl,
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            // child: Row(
            //   children: [
            //     Text(
            //       "$rating",
            //       style: const TextStyle(
            //         fontSize: 14,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //     const SizedBox(width: 5),
            //     SvgPicture.asset("assets/icons/Star Icon.svg"),
            //   ],
            // ),
          )
        ],
      ),
    );
  }
}
