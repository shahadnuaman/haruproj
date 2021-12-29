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
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[300],
        ),
        width: getSize(context).width,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: TextFormField(
                cursorColor: Colors.black,
                onChanged: onChanged,
                // keyboardType: inputType,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    // contentPadding: EdgeInsets.only(
                    //     left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Search..."),
              )),
              Icon(Icons.search)
            ],
          ),
        ),
      ),
    );
  }
}
