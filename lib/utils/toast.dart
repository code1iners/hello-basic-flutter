import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Toasting'),
        onPressed: () {
          toasting('Hello toast!');
        },
      ),
    );
  }

  void toasting(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.redAccent,
        fontSize: 20.0,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT);
  }
}
