import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavDrawer extends StatelessWidget {
  static String routeName = "/navbar";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/logo.png'))),
          ),
          ListTile(
            leading: Icon(Iconsax.shapes_1),
            title: Text('مجسمات'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Iconsax.shopping_cart3),
            title: Text('ملابس'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('بوسترات'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('المانكا'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('تسجيل خروج'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
