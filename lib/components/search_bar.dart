import 'package:flutter/material.dart';
import 'package:harubom/data/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        width: getSize(context).width,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: TextFormField(
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontFamily: 'Cairo', color: Color(0xffA0054F)),
                      cursorColor: Colors.black,
                      onChanged: onChanged,
                      // keyboardType: inputType,
                      decoration: const InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          // contentPadding: EdgeInsets.only(
                          //     left: 15, bottom: 11, top: 11, right: 15),
                          hintText: " بحث ..",
                          hintStyle: const TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 12.0,
                              color: Color(0xffA0054F))))),
              Icon(
                Icons.search,
                textDirection: TextDirection.ltr,
                color: Color(0xffA0054F),
              )
            ],
          ),
        ),
      ),
    );
  }
}
