import 'package:flutter/material.dart';
import 'package:harubom/components/product_card.dart';
import 'package:harubom/components/sectiontitle.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/provider/products_provider.dart';
import 'package:provider/provider.dart';

// import 'size_config.dart';
import 'sectiontitle.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Provider.of<ProductsProvider>(context, listen: false)
          .fetchPost(); // myModel = Provider.of<GetServiceProvider>(context, listen: false).model;
    });
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(title: "المنتجات", press: () {}),
        ),
        SizedBox(height: 40),
        Consumer<ProductsProvider>(builder: (context, product, _) {
          print(product.state);
          if (product.state == ScreenState.busy) {
            return Center(
              child: Container(
                width: getSize(context).width * 0.25,
                height: 100,
                color: Colors.amber,
              ),
            );
          }

          return Container(
            width: getSize(context).width * 0.5,
            height: 100,
            color: Colors.green,
          );
        })

        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       // Container(
        //       //   width: 100,
        //       //   height: 100,
        //       //   color: Colors.red,
        //       // ),
        //       // ...ListView.builder(
        //       //   itemCount: 3,
        //       //   itemBuilder: (BuildContext context, int index) {
        //       //     return Container(
        //       //       width: 100,
        //       //       height: 100,
        //       //       color: Colors.red,
        //       //     );
        //       //   },
        //       // ),
        //       ...List.generate(
        //         3,
        //         (index) {
        //           // return Padding(
        //           //   padding: const EdgeInsets.all(8.0),
        //           //   child: Container(
        //           //     width: 100,
        //           //     height: 100,
        //           //     color: Colors.red,
        //           //   ),
        //           // );
        //           return ProductCard(product: demoProducts[index]);

        //           // if (demoProducts[index].isPopular)
        //           //   return ProductCard(product: demoProducts[index]);

        //           // return SizedBox
        //           //     .shrink(); // here by default width and height is 0
        //         },
        //       ),
        //       SizedBox(width: 20),
        //     ],
        //   ),
        // )
      ],
    );
  }
}