import 'package:flutter/material.dart';
import 'package:harubom/components/product_card.dart';
import 'package:harubom/components/sectiontitle.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';
import 'package:harubom/provider/products_provider.dart';
import 'package:provider/provider.dart';

// import 'size_config.dart';
import 'sectiontitle.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Provider.of<ProductsProvider>(context, listen: false)
          .getServices(); // myModel = Provider.of<GetServiceProvider>(context, listen: false).model;
    });
    return ListView(
      shrinkWrap: true,
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
          if (product.state == ScreenState.error) {
            return Center(
              child: Container(
                width: getSize(context).width * 0.25,
                height: 100,
                color: Colors.red,
              ),
            );
          }

          return Container(
            width: getSize(context).width,
            height: 200,
            // color: Colors.green,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: product.searchList.length,
                itemBuilder: (context, index) {
                  final ProductsCardModel e = product.searchList[index];
                  final Product pro = Product(
                      id: index,
                      image: workingUrl + e.backgroundImage.toString(),
                      sizes: ["XL", "L", "M"],
                      colors: [
                        Color(0xFFA0054F),
                        Color(0xFF836DB8),
                        Color(0xFFDECB9C),
                        Colors.white,
                      ],
                      title: e.name.toString(),
                      price: index.toDouble(),
                      description: description);
                  return Padding(
                    padding: (index == 0)
                        ? EdgeInsets.only(right: 16)
                        : EdgeInsets.only(right: 0),
                    child: ProductCard(product: pro),
                  );
                }),
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
        // return ProductCard(product: demoProducts[index]);

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
