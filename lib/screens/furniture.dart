import 'package:flutter/material.dart';

class Furniture extends StatefulWidget {
  @override
  _FurnitureState createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Furniture UI'),
      ),
    );
  }
}