import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

///import 'package:harubom/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Heart Icon.svg", "text": "مانكا"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "ملابس"},
      {"icon": "assets/icons/Game Icon.svg", "text": "بوسترات"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "مجسمات"},
    ];
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              width: 80,
              height: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                child: SvgPicture.asset(
                  icon!,
                  color: Color(0xFF458CAA),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFA0054F), fontFamily: 'Cairo', fontSize: 15),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: 81,
            //     height: 70,
            //     padding: EdgeInsets.all(15),
            //     decoration: BoxDecoration(
            //       color: Color(0xFFE5E5E5),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Icon(
            //       Iconsax.book,
            //       size: 30,
            //       color: Color(0xFF458CAA),
            //     ),
            //   ),
            // ),
            // Text(
            //   text!,
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Color(0xFFA0054F), fontFamily: 'Cairo', fontSize: 15),
            // ),
          ],
        ),
      ),
    );
  }
}
