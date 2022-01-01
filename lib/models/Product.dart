import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title, description;
  final String image;
  final List<String> sizes;
  final List<Color> colors;
  final double price;
  final bool isFavourite, isPopular;

  Product(
      {required this.id,
      required this.image,
      required this.sizes,
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
    id: "1",
    image: "images/Dragonball.png",

    sizes: ["XL", "L", "M"],
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
    id: "2",
    image: "images/naruto.png",

    sizes: ["M"],
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
    id: "3",
    image: "images/boy.png",

    sizes: ["L"],
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
