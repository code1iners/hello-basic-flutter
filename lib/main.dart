import 'package:flutter/material.dart';
import 'package:hello_menu_icon/navigator/Delegator.dart';
import 'package:hello_menu_icon/navigator/PageOne.dart';
import 'package:hello_menu_icon/navigator/PageTwo.dart';
import 'package:hello_menu_icon/navigator/ScreenA.dart';
import 'package:hello_menu_icon/navigator/ScreenB.dart';
import 'package:hello_menu_icon/navigator/ScreenC.dart';

import 'menu/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/', // note. Navigator.
      routes: {
        '/': (context) => Delegator(),
        '/a': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
        '/page/1': (context) => PageOne(),
        '/page/2': (context) => PageTwo(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
