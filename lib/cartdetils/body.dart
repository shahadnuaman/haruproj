import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:harubom/components/default_button.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/helpers.dart';
import 'package:harubom/loginscreen.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';
import 'package:harubom/models/productsmodel.dart';
import 'package:harubom/screens/cart_screen.dart';
import 'package:harubom/utils/toast.dart';

import '../size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';
import 'package:http/http.dart' as http;

class Body extends StatelessWidget {
  final Product product;
  ProductsCardModel? newProducts;

  Body({
    Key? key,
    required this.product,
    this.newProducts,
  }) : super(key: key);

  Future addTocart(context, String id, qty) async {
    /// MyToast.pushToast(context: context, text: "test");

    try {
      var encodedBody =
          json.encode({"product_id": id, "qty": 1, "ordered": false});

      var response =
          await http.post(Uri.parse(workingUrl + 'api/order/add-to-cart'),
              headers: {
                'accept': 'application/json',
                'Authorization':
                    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwayI6ImZlZWNmZTZmLTAzNTEtNDc5MS04YzkzLTQyOWM5ODNjMGVhNSJ9.8Bzk9Gfw58XcwHKSC7QxV_X4Qf3Np8-3hATLj1RN0fA',
                'Content-Type': 'application/json'
              },
              body: encodedBody);
      print(response.body);
      if (response.statusCode == 200) {
        MyToast.pushToast(context: context, text: "تم اضافة المنتج الى السلة");

        var data = jsonDecode(response.body.toString());
        // print(data['token']);
        // print('Login successfully');

        ///hpush('context', CartScreen());
        ///Text("data");
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

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
              SizedBox(height: 40),
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
                    onPressed: () =>

                        /// addTocart('2cfd694c-0596-477f-8638-ad0b17ce7ade', 1),
                        addTocart(context, product.id.toString(), 1),
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
