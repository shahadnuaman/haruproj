import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/models/Cart.dart';
import 'package:harubom/models/Product.dart';
import 'package:harubom/models/items.dart';
import 'package:harubom/provider/item_provider.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';
import '../../enums.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await Provider.of<ItemProvider>(context, listen: false)
          .getServices(); // myModel = Provider.of<GetServiceProvider>(context, listen: false).model;
    });
    return Consumer<ItemProvider>(builder: (context, product, _) {
      print(product.state);
      if (product.state == ScreenState.busy) {
        return Center(
            child: Container(
          width: getSize(context).width * 0.25,
          height: 100,
          child: Image.asset('images/loading.png'),
        ));
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
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: product.searchList.length,
            itemBuilder: (context, index) {
              final ItemModel e = product.searchList[index];
              final ItemModel pro = ItemModel(
                  itemQty: e.itemQty, product: e.product, ordered: e.ordered
                  // id: product.searchList[index].product!.id.toString(),
                  // image: workingUrl +
                  //     product.searchList[index].product!.images.toString(),
                  // sizes: [],
                  // colors: [
                  //   Color(0xFFA0054F),
                  //   Color(0xFF836DB8),
                  //   Color(0xFFDECB9C),
                  //   Colors.white,
                  // ],
                  // title: e..toString(),
                  // price: e.price!.toDouble(),
                  // description: e.description.toString()
                  );

              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Dismissible(
                  key: Key(product.searchList[index].product!.id.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      demoCarts.removeAt(index);
                    });
                  },
                  background: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE6E6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // child: Row(
                    //   children: [
                    //     Spacer(),
                    //     SvgPicture.asset("assets/icons/Trash.svg"),
                    //   ],
                    // ),
                  ),
                  child: CartCard(cart: pro),
                ),
              );
            }),
      );
    });
  }
}
