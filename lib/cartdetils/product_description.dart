import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harubom/models/Product.dart';

import '../../../constants.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Row(children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                    color: Color(0XFFA0054F),
                  )),
              SizedBox(
                width: 30,
              ),
              Text(
                "1",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 35,
                    color: Color(0XFFA0054F)),
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.remove_circle_outline,
                    size: 32,
                    color: Color(0XFFA0054F),
                  ))
            ], mainAxisAlignment: MainAxisAlignment.center),
          ),
        ),
        // Container(
        //   child: Row(
        //     children: [Icon(Icons.access_alarm)],
        //   ),
        // ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          // child: Center(
          //   child: Text(
          //     product.title,
          //     style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
          //     //Theme.of(context).textTheme.headline6,
          //     textDirection: TextDirection.rtl,
          //   ),
          // ),
        ),
        SizedBox(height: 20),
        // Align(
        //   alignment: Alignment.centerLeft,
        //   child: Container(
        //     padding: EdgeInsets.all(15),
        //     width: 64,
        //     decoration: BoxDecoration(
        //       color:
        //           product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
        //       borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(20),
        //         bottomRight: Radius.circular(20),
        //       ),
        //     ),
        //     child: SvgPicture.asset(
        //       "assets/icons/Heart Icon_2.svg",
        //       color:
        //           product.isFavourite ? Color(0xFFA0054F) : Color(0xFFDBDEE4),
        //       height: 16,
        //     ),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            product.description,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 16, fontFamily: 'Cairo'),
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                // Text(
                //   "المزيد...",
                //   textDirection: TextDirection.rtl,
                //   style: TextStyle(
                //       fontWeight: FontWeight.w600, color: kPrimaryColor),
                // ),
                // SizedBox(width: 5),
                // Icon(
                //   Icons.arrow_forward_ios,
                //   size: 12,
                //   color: kPrimaryColor,
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
