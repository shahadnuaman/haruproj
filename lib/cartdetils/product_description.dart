import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';
import 'package:harubom/provider/increase_product.dart';
import 'package:harubom/utils/toast.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../enums.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  Future IncreaseItems(context, String id) async {
    /// MyToast.pushToast(context: context, text: "test");

    try {
      String data = 'db206d5d-312a-4d0a-9192-1ba6c1339e43';

      var http;
      var response = await http.post(
        Uri.parse(workingUrl + 'api/order/increase-item/?item_id=$data'),
        headers: {
          'accept': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwayI6ImZlZWNmZTZmLTAzNTEtNDc5MS04YzkzLTQyOWM5ODNjMGVhNSJ9.8Bzk9Gfw58XcwHKSC7QxV_X4Qf3Np8-3hATLj1RN0fA',
          'Content-Type': 'application/json'
        },
      );

      print(response.body);
      if (response.statusCode == 200) {
        MyToast.pushToast(context: context, text: "تم تحديث  السلة");

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
    // WidgetsBinding.instance!.addPostFrameCallback((_) async {
    //   await Provider.of<IncreaseItemProvider>(context, listen: false).getServices(
    //       context); // myModel = Provider.of<GetServiceProvider>(context, listen: false).model;
    // });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // SizedBox(),
        // Consumer<IncreaseItemProvider>(builder: (context, product, _) {
        //   print(product.state);
        //   if (product.state == ScreenState.busy) {
        //     return Center(
        //         child: Container(
        //       width: getSize(context).width * 0.25,
        //       height: 100,
        //       child: Image.asset('images/loading.png'),
        //     ));
        //   }
        //   if (product.state == ScreenState.error) {
        //     return Center(
        //       child: Container(
        //         width: getSize(context).width * 0.25,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //     );
        //   }

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Row(children: [
              IconButton(
                  onPressed: () => IncreaseItems(context, product.id),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
        ),
        SizedBox(height: 20),
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
        // }
        //     ////////////////
        //     )
      ],
    );
  }
}
