// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:harubom/categories.dart';
import 'package:harubom/components/coustom_bottom_nav_bar.dart';
import 'package:harubom/components/product.dart';
import 'package:harubom/components/spacialoffers.dart';
import 'package:harubom/detailsscreen.dart';
import 'package:harubom/enums.dart';
import 'package:harubom/loginscreen.dart';
import 'package:harubom/sidebarmenu.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Color(0xffA0054F),
                size: 35,
              ),
              title: Container(
                  width: 271,
                  height: 35,
                  margin: EdgeInsets.only(top: 20),
                  child: TextField(
                    style: const TextStyle(fontFamily: 'Cairo'),
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      suffixIcon: const Icon(
                        Icons.search,
                        textDirection: TextDirection.rtl,
                        color: Color(0xffA0054F),
                      ),
                      hintText: 'بحث',
                      hintStyle: const TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 12.0,
                          color: Color(0xffA0054F)),
                    ),
                    // autofocus: false,
                  )),
            ),
          ),
          drawer: NavDrawer(),
          body: ListView(
              physics: AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics()),
              children: [
                // const SizedBox(height: 40),
                Categories(),
                const SizedBox(height: 15),
                SpecialOffers(),
                const SizedBox(height: 30),
                Products(),
                const SizedBox(height: 30),
              ]),
          bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
        ));
  }
}
