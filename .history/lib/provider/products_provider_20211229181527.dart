import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';
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
    try {
      state = ScreenState.busy;
      var response = await Dio().get(
        workingUrl + '/api/Services',
      );

      // print(response.data);

      // try {
      //   // model = ServiceModel.fromJson(response.data);
      //   // model = await MyServiceModel.fromJson(response.data);
      // } catch (e) {
      //   print(e);
      // }
      await Future.delayed(Duration(seconds: 15));
      // print(model.name);
      // print(list);
      state = ScreenState.idle;
      await Future.delayed(Duration(seconds: 15));
      // print(model.name);
      // print(list);
      state = ScreenState.error;

      notifyListeners();
      // notifyListeners();
      return true;
    } catch (e) {
      print(e);
      // state = ScreenState.idle;
      notifyListeners();
      debugPrint('an error accured');
      // throw Exception('Failed to load ');
    }

    // var url = Uri.parse(
    //     'https://api.openweathermap.org/data/2.5/weather?q=Baghdad&appid=8b880b9c50c434dea685e64bda04d435');
    // final response = await http.get(url);

    // if (response.statusCode == 200) {
    //   List<dynamic> responseData = jsonDecode(response.body);
    //   responseData.map((e) {
    //     addToList(ApiProducts.fromJson(e));
    //   });

    //   debugPrint('Response== $responseData');
    //   debugPrint('Response== ${responseData.runtimeType}');
    //   state = ScreenState.idle;

    //   // return Products.fromJson(responseData);
    // } else {
    //   state = ScreenState.idle;
    //   debugPrint('an error accured');
    //   throw Exception('Failed to load ');
    // }
  }
}
