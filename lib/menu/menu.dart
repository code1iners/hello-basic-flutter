import 'package:flutter/material.dart';
import '../utils/snackbar.dart';
import '../utils/toast.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        titleTextStyle: TextStyle(
          fontSize: 10.0,
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("Clicked shopping cart button");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Clicked search button");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('account name'),
              accountEmail: Text('account email'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cat_001.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dog_001.jpg'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/lesser_panda_001.jpeg'),
                ),
              ],
              onDetailsPressed: () {
                print("Clicked on details pressed");
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('Clicked home top.');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text('Settings'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('Clicked home top.');
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('Clicked Q&A top.');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SnackBarMessage(), ToastMessage()],
        ),
      ),
    );
  }
}
