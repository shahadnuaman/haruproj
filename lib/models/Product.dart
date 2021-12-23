import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final bool isFavourite, isPopular;

  Product(
      {required this.id,
      required this.images,
      required this.colors,

      /// this.rating = 0.0,
      this.isFavourite = false,
      this.isPopular = false,
      required this.title,
      required this.price,
      required this.description});
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "images/Dragonball.png",
      "images/Dragonball.png",
      "images/Dragonball.png",
    ],
    colors: [
      Color(0xFFA0054F),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "دراكون بول",
    price: 14.99,
    description: description,
    // currency: "IQD",
    //rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "images/naruto.png",
    ],
    colors: [
      Color(0xFFA0054F),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "ناروتو",
    price: 20.5,
    description: description,
    // rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "images/boy.png",
    ],
    colors: [
      Color(0xFFA0054F),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "مانكا",
    price: 10.000,
    description: description,
    // currency: "IQD",
    ///rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description = "سوتر قطني 100% خامة رائعة صناعة يابانيسوتر قطني";
