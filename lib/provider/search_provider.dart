import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
// import 'package:nishan/data/constants.dart';

enum ScreenState { idle, busy }

class SearchListModel {
  String? id;
  bool? isFeatured;
  String? name;
  String? description;
  List<Images>? images;
  String? size;
  int? qty;
  int? price;
  double? discountedPrice;
  Category? category;
  String? created;
  String? updated;

  SearchListModel(
      {this.id,
      this.isFeatured,
      this.name,
      this.description,
      this.images,
      this.size,
      this.qty,
      this.price,
      this.discountedPrice,
      this.category,
      this.created,
      this.updated});

  SearchListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isFeatured = json['is_featured'];
    name = json['name'];
    description = json['description'];
    // images =
    //     json['images'] != null ? new Images.fromJson(json['images']) : null;
    if (json['images'] != null) {
      // ignore: unnecessary_new, deprecated_member_use, prefer_collection_literals
      images = <Images>[];
      json['images'].forEach((v) {
        images?.add(new Images.fromJson(v));
      });
    }
    size = json['size'];
    qty = json['qty'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_featured'] = this.isFeatured;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.images != null) {
      data['images'] = this.images?.map((v) => v.toJson()).toList();
    }
    data['size'] = this.size;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    if (this.category != null) {
      data['category'] = this.category?.toJson();
    }
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}

class Images {
  String? image;
  bool? isDefaultImage;

  Images({this.image, this.isDefaultImage});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    isDefaultImage = json['is_default_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['is_default_image'] = this.isDefaultImage;
    return data;
  }
}

class Category {
  String? id;
  String? name;
  String? description;
  String? image;

  Category({this.id, this.name, this.description, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
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
        workingUrl + '/api/?q=$q',
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
