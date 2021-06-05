import 'package:flutter/material.dart';
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
      home: MenuPage(), // note. Menu and drawer.
      debugShowCheckedModeBanner: false,
    );
  }
}
