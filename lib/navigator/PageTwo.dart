import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go back to Page 1'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_down),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Do you want unlike?'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
                label: 'Sure',
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Unliked!',
                    gravity: ToastGravity.BOTTOM,
                  );
                }),
          ));
        },
      ),
    );
  }
}
