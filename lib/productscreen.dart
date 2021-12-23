// import 'package:flutter/material.dart';
// import 'package:harubom/cartdetils/product_description.dart';
// import 'package:harubom/cartdetils/product_images.dart';
// import 'package:harubom/cartdetils/top_rounded_container.dart';
// import 'package:harubom/components/default_button.dart';
// import 'package:harubom/models/Product.dart';

// import 'cartdetils/color_dots.dart';

// class ProduuctScreen extends StatelessWidget {
//   final Product product;
//   static String routeName = "/Producrscreen";

//   const ProduuctScreen({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext) {
//     return ListView(
//       children: [
//         ProductImages(product: product),
//         TopRoundedContainer(
//           color: Colors.white,
//           child: Column(
//             children: [
//               ProductDescription(
//                 product: product,
//                 pressOnSeeMore: () {},
//               ),
//               TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: 50,
//                           right: 50,
//                           bottom: 40,
//                           top: 15,
//                         ),
//                         child: DefaultButton(
//                           text: "Add To Cart",
//                           press: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
