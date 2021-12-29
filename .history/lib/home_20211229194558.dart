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
