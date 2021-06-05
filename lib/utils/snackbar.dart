import 'package:flutter/material.dart';

class SnackBarMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text('Show mee'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Hello',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
      ),
    );
  }
}
