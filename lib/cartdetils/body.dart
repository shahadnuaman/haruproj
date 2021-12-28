import 'package:flutter/material.dart';

import 'package:harubom/components/default_button.dart';
import 'package:harubom/loginscreen.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/productsmodel.dart';
import 'package:harubom/screens/cart_screen.dart';

import '../size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  Products? newProducts;

  Body({
    Key? key,
    required this.product,
    this.newProducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$${product.price}",
              style: TextStyle(
                  color: Color(0xffA0054F), fontFamily: 'Cairo', fontSize: 20),
            ),
            Text(
              product.title,
              style: TextStyle(
                  color: Color(0xffA0054F), fontFamily: 'Cairo', fontSize: 20),
            ),
          ],
        ),
        TopRoundedContainer(
          color: Color(0xffDFEEF4),
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              SizedBox(height: 0),
              SizedBox(
                height: 48,
                width: 349,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF458CAA),
                      ////    primary: Color(0xffA0054F),
                      ///  onSurface: Color(0xffA0054F),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                    ),
                    onPressed: () => {Navigator.pushNamed(context, '/cart')},
                    child: const Text(
                      'اضافة للسلة ',
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Cairo',
                          fontSize: 20),
                    )),
              ),

              ///  TopRoundedContainer(color: Color(0xFFA0054F), child: Column())
            ],
          ),
        ),
      ],
    );
  }
}
