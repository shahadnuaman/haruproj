import 'package:flutter/material.dart';
import 'package:harubom/models/Cart.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              /// padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFfffff),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        // SizedBox(width: 20),
        Container(
          width: 280,
          height: 80,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffDFEEF4),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Iconsax.minus_square5, color: Color(0xff458CAA)),
                  onPressed: null,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: " ${cart.numOfItem}X",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: [
                          TextSpan(
                              text: "\$${cart.product.price}",
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    ),
                    SizedBox(width: 80),
                    Text(
                      cart.product.title,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                  ],
                ),
              ]),
        )
      ],
    );
  }
}
