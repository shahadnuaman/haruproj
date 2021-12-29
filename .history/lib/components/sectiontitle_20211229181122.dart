import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 200.0),
          child: Container(
            width: 135,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 15,
                    color: Color(0xFF458CAA),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
