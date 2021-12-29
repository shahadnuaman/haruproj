import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/models/productsmodel.dart';
import 'package:http/http.dart' as http;

class ProductsProvider extends ChangeNotifier {
  // create instance from the enum
  ScreenState state = ScreenState.idle;
  late List<ApiProducts> products;

  void addToList(ApiProducts product) {
    if (!products.contains(product)) {
      products.add(product);
    }
  }

  fetchPost() async {
    state = ScreenState.busy;

    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Baghdad&appid=8b880b9c50c434dea685e64bda04d435');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseData = jsonDecode(response.body);
      responseData.map((e) {
        addToList(ApiProducts.fromJson(e));
      });

      debugPrint('Response== $responseData');
      debugPrint('Response== ${responseData.runtimeType}');
      state = ScreenState.idle;

      // return Products.fromJson(responseData);
    } else {
      state = ScreenState.idle;
      debugPrint('an error accured');
      throw Exception('Failed to load ');
    }
  }
}
