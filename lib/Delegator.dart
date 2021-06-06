import 'package:flutter/material.dart';

class Delegator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delegator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text('Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/a');
              },
            ),
            OutlinedButton(
              child: Text('Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/page/1');
              },
            ),
            OutlinedButton(
              child: Text('Stateful'),
              onPressed: () {
                Navigator.pushNamed(context, '/state');
              },
            ),
          ],
        ),
      ),
    );
  }
}
