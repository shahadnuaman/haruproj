import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class NavDrawer extends StatelessWidget {
  static String routeName = "/navbar";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            bottomLeft: Radius.circular(60.0),
          ),
          color: Color(0xff458CAA),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    size: 33,
                    color: Color(0xffffffff),
                  ),
                  title: Text(
                    'اهلا بك ' + "اعتماد",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'cairo'),
                  ),
                  onTap: () => {},
                ),
              ),
              decoration: BoxDecoration(

                  ///borderRadius: new BorderRadius.all(new Radius.circular(162)),
                  // image: DecorationImage(
                  //     fit: BoxFit.fill, image: AssetImage('images/logo.png'))
                  //
                  ),
            ),
            ListTile(
              leading: Icon(
                Iconsax.shapes_1,
                color: Color(0xffffffff),
              ),
              title: Text(
                'مجسمات',
                style: TextStyle(
                    fontFamily: 'cairo',
                    color: Color(0xffFFFFFF),
                    fontSize: 19),
              ),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(
                Iconsax.box_add,
                color: Color(0xffffffff),
              ),
              title: Text(
                'ملابس',
                style: TextStyle(
                    fontFamily: 'cairo',
                    color: Color(0xffFFFFFF),
                    fontSize: 19),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.post_add_sharp,
                color: Color(0xffffffff),
              ),
              title: Text(
                'بوسترات',
                style: TextStyle(
                    fontFamily: 'cairo',
                    color: Color(0xffFFFFFF),
                    fontSize: 19),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Iconsax.book,
                color: Color(0xffffffff),
              ),
              title: Text('المانكا',
                  style: TextStyle(
                      fontFamily: 'cairo',
                      color: Color(0xffFFFFFF),
                      fontSize: 19)),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Color(0xffffffff),
              ),
              title: Text(
                'تسجيل خروج',
                style: TextStyle(
                    fontFamily: 'cairo',
                    color: Color(0xffFFFFFF),
                    fontSize: 19),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Sekai',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'cairo',
                            color: Color(0xffFFFFFF),
                            fontSize: 40),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              child: Icon(
                                Iconsax.instagram5,
                                size: 35,
                                color: Color(0xffffffff),
                              ),
                              onPressed: () => {},
                            ),
                            TextButton(
                              child: Icon(
                                Icons.facebook_outlined,
                                size: 35,
                                color: Color(0xffffffff),
                              ),
                              onPressed: () => {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
