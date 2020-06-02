import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  RregisterState createState() => RregisterState();
}

class RregisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //first element
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 65.0, 0.0, 0.0),
                      child: Text(
                        'There',
                        style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(220.0, 65.0, 0.0, 0.0),
                      child: Text(
                        '.',
                        style: TextStyle(
                          fontSize: 80.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'NAME',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                      obscureText: true,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40.0,
              ),

              Container(
                height: 40.0,
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.indigo[800],
                  color: Colors.green,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 40.0,
              ),

              Container(
                height: 40.0,
                padding: EdgeInsets.only(right: 20.0, left: 20.0,),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.red,
                  color: Colors.red,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'Go Back',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
