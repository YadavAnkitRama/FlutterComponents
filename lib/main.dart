import 'package:FlutterComponents/screens/furniture.dart';
import 'package:FlutterComponents/screens/index.dart';
import 'package:FlutterComponents/screens/login.dart';
import 'package:FlutterComponents/screens/register.dart';
import 'package:FlutterComponents/screens/shopping.dart';
import 'package:FlutterComponents/screens/travel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/register': (context) => Register(),
      '/login' : (context) => Login(),
      '/index' : (context) => Index(),
      '/shopping': (context) => Shopping(),
      '/furniture' : (context) => Furniture(),
      '/travel' : (context) => Travel(),

    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Login screen'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/login');
          },
        ),
      ),
    );
  }
}
