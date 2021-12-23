import 'package:flutter/material.dart';
import 'package:harubom/cartdetils/body.dart';
import 'package:harubom/cartdetils/custom_app_bar.dart';

import '../../models/Product.dart';
// import 'components/body.dart';
// import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Product? product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(title: agrs.product.title),
      ),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
