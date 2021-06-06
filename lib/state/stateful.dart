import 'package:flutter/material.dart';

class StateFulWidgetExample extends StatefulWidget {
  @override
  _StateFulWidgetExampleState createState() => _StateFulWidgetExampleState();
}

class _StateFulWidgetExampleState extends State<StateFulWidgetExample> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter : $counter'),
            OutlinedButton(
              child: Text('Initialize'),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
