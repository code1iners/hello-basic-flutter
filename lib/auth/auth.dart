import 'package:flutter/material.dart';

class AuthenticationExam extends StatefulWidget {
  @override
  _AuthenticationExam createState() => _AuthenticationExam();
}

class _AuthenticationExam extends State<AuthenticationExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication'),
      ),
      body: Center(
        child: Column(
          children: [Text('data')],
        ),
      ),
    );
  }
}
