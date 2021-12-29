import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harubom/detailsscreen.dart';
import 'package:harubom/helpers.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/productsmodel.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: width,
        child: GestureDetector(
          // on,
          // onTap: () => hpush(
          // context,
          // MaterialPageRoute(
          //     builder: (context) => const DetailsScreen(),
          //     settings: RouteSettings(
          //         arguments: ProductDetailsArguments[product],))),
          onTap: () => Navigator.pushNamed(context, DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: product)),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Hero(
                    tag: product.id.toString(),
                    child: (product.image.contains('http'))
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.network(product.image))
                        : Image.asset(product.image),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: (18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: (28),
                      width: (28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
