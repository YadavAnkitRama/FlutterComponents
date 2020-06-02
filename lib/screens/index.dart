import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
            color: Colors.black,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            )),
        backgroundColor: Colors.indigo[800],
      ),
      drawer: Drawer(
        child: ListView(    
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo[800],
              ),
              accountName: Text('Ankit Rama Yadav'),
              accountEmail: Text('2019ankit.yadav@ves.ac.in'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.face),
              ),
            ),
            ListTile(
              title: Text('Shopping UI'),
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.pushNamed(context, '/shopping');
              },
            ),
            ListTile(
              title: Text('Furniture UI'),
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.work),
              onTap: () {
                Navigator.pushNamed(context, '/furniture');
              },
            ),
            ListTile(
              title: Text('Travel UI'),
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.fast_forward),
              onTap: () {
                Navigator.pushNamed(context, '/travel');
              },
            )
          ],
        ),
      ),
    );
  }
}
