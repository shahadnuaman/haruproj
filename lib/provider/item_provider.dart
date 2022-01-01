import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';
import 'package:harubom/models/items.dart';

class ItemProvider extends ChangeNotifier {
  List<ItemModel> searchList = [];
  List<ItemModel> bestOffers = [];

  void addToList(ItemModel item) {
    if (!searchList.contains(item)) {
      searchList.add(item);
    }
  }

  void removeFromList(ItemModel item) {
    if (searchList.contains(item)) {
      searchList.remove(item);
    }
  }

  // void addtobest(ProductsCardModel item) {
  //   if (!bestOffers.contains(item)) {
  //     bestOffers.add(item);
  //   }
  // }

  // void removebest(ProductsCardModel item) {
  //   if (bestOffers.contains(item)) {
  //     bestOffers.remove(item);
  //   }
  // }

  ScreenState state = ScreenState.idle;
  // {context, q}
  getServices() async {
    searchList = [];
    state = ScreenState.busy;

    notifyListeners();

    // print(myUrl);
    try {
      var response = await Dio().get(workingUrl + '/api/order/cart',
          options: Options(
            headers: {
              "authorization":
                  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwayI6ImZlZWNmZTZmLTAzNTEtNDc5MS04YzkzLTQyOWM5ODNjMGVhNSJ9.8Bzk9Gfw58XcwHKSC7QxV_X4Qf3Np8-3hATLj1RN0fA"
            },
          ));

      print(response.data);
      // var model = ProductsCardModel.fromJson(response.data);
      // print(model);
      List<dynamic> list = response.data;
      list.map((e) {
        var item = ItemModel.fromJson(e);
        addToList(item);

        // print(item.name);
      }).toList();
      // print(list);
      state = ScreenState.idle;

      notifyListeners();
      return true;
    } catch (e) {
      print(e);
    }
    state = ScreenState.idle;

    notifyListeners();
    return false;
  }
}
