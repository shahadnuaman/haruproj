import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
import 'package:harubom/enums.dart';

class AddToCart {
  String? productId;
  int? qty;
  bool? ordered;

  AddToCart({this.productId, this.qty, this.ordered});

  AddToCart.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    qty = json['qty'];
    ordered = json['ordered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['qty'] = this.qty;
    data['ordered'] = this.ordered;
    return data;
  }
}

class AddToCartProvider extends ChangeNotifier {
  List<AddToCart> searchList = [];

  void addToList(AddToCart item) {
    if (!searchList.contains(item)) {
      searchList.add(item);
    }
  }

  void removeFromList(AddToCart item) {
    if (searchList.contains(item)) {
      searchList.remove(item);
    }
  }

  ScreenState state = ScreenState.idle;
  // {context, q}
  search(q) async {
    if (q == '') {
      searchList = [];
      notifyListeners();
      return false;
    }
    searchList = [];
    state = ScreenState.busy;

    notifyListeners();

    // print(myUrl);
    try {
      var response = await Dio().post(
        workingUrl + '/api/order/add-to-cart',
      );

      // print(response.data);
      // var model = SearchListModel.fromJson(response.data);
      // print(model);
      List<dynamic> list = response.data;
      list.map((e) {
        var item = AddToCart.fromJson(e);
        addToList(item);
        // print(item.name);
      }).toList();
      // print(list);

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
