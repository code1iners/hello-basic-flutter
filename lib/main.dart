import 'package:flutter/material.dart';
import 'package:hello_menu_icon/navigator/screenA.dart';
import 'package:hello_menu_icon/navigator/screenB.dart';
import 'package:hello_menu_icon/navigator/screenC.dart';
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
      // home: MenuPage(), // note. Menu and drawer.
      initialRoute: '/a', // note. Navigator.
      routes: {
        '/a': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
