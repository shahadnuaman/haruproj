import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:harubom/models/productsmodel.dart';
import 'package:http/http.dart' as http;

class ProductsProvider extends ChangeNotifier {
  fetchPost() async {
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Baghdad&appid=8b880b9c50c434dea685e64bda04d435');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);

      debugPrint('Response== $responseData');
      debugPrint('Response== ${responseData.runtimeType}');

      return Products.fromJson(responseData);
    } else {
      throw Exception('Failed to load ');
    }
  }
}
