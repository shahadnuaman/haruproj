import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
// import 'package:nishan/data/constants.dart';

enum ScreenState { idle, busy }

class SearchListModel {
  late String id;
  late String backgroundImage;
  late String name;
  late double price;

  SearchListModel(
      {required this.id,
      required this.backgroundImage,
      required this.name,
      required this.price});

  SearchListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    backgroundImage = json['background_image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['background_image'] = this.backgroundImage;
    data['name'] = this.name;
    data['price'] = this.price;

    return data;
  }
}

class SearchProvider extends ChangeNotifier {
  List<SearchListModel> searchList = [];

  void addToList(SearchListModel item) {
    if (!searchList.contains(item)) {
      searchList.add(item);
    }
  }

  void removeFromList(SearchListModel item) {
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
      var response = await Dio().get(
        workingUrl + '/api/search?q=$q',
      );

      // print(response.data);
      // var model = SearchListModel.fromJson(response.data);
      // print(model);
      List<dynamic> list = response.data;
      list.map((e) {
        var item = SearchListModel.fromJson(e);
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
