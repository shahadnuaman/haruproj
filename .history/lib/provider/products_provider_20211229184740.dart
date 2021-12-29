import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/models/generated/products_card_model/products_card_model.dart';

class ProductsProvider extends ChangeNotifier {
  List<ProductsCardModel> searchList = [];
  List<ProductsCardModel> bestOffers = [];

  void addToList(ProductsCardModel item) {
    if (!searchList.contains(item)) {
      searchList.add(item);
    }
  }

  void removeFromList(ProductsCardModel item) {
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
      var response = await Dio().get(
        workingUrl + '/api/Services',
      );
      var rate = 0.0;
      double a = 1, b = 1, c = 1, d = 1, E = 1;

      // print(response.data);
      // var model = ProductsCardModel.fromJson(response.data);
      // print(model);
      List<dynamic> list = response.data;
      list.map((e) {
        var item = ProductsCardModel.fromJson(e);
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
