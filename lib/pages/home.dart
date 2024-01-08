// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turads/constant/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // this to change the color after open Drawer
        // drawerScrimColor: Colors.red,

        // iconTheme:IconThemeData(color: widgetFactory),
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // For User Account
            const Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/black.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // assets/images/favicon.png
                  currentAccountPicture: CircleAvatar(
                      foregroundImage: AssetImage("assets/images/favicon.png")),
                  accountName: Text('TURADS LTD'),
                  accountEmail: Text("info@turads.com"),
               
                ),

                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  // onLongPress: () {},
                  // onFocusChange: _onClick1(),
                ),
                ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                  // onLongPress: () {},
                  // onFocusChange: _onClick1(),
                ),
                ListTile(
                  title: Text('My Products'),
                  leading: Icon(Icons.add_shopping_cart),
                  // onLongPress: () {},
                  // onFocusChange: _onClick1(),
                ),
                ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help_center),
                  // onLongPress: (){},
                  // onTap : void fun() { return 3;},
                ),
              ],
            ),

            // padding: EdgeInsets.all(5),
            Container(
              padding: EdgeInsets.only(left: 40),
              margin: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: const [
                  Text( "devloped by themezoz.com",  style: TextStyle(   fontSize: 16,  ), ),
                  Icon(Icons.copyright),
                ],
              ),
            ),
          ],
        )),
        // ignore: prefer_const_literals_to_create_immutables
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_shopping_cart,
                          color: whitecolor,
                          size: 33.2,
                        )),
                    Positioned(
                        top: -5.0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(  color: textcolor, shape: BoxShape.circle),
                          child: Text('9',    style:   TextStyle(fontSize: 16, color: whitecolor)),
                        )),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$26",
                        style: TextStyle(fontSize: 30, color: whitecolor))),
              ],
            ),
          ],
          title: Text(
            'TurAds',
            style: TextStyle(color: whitecolor, fontSize: 30),
          ),
          backgroundColor: upnavbarcolor,
        ),
      ),
    );
  }
}
