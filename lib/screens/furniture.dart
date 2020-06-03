import 'package:flutter/material.dart';

class Furniture extends StatefulWidget {
  @override
  _FurnitureState createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  color: Color(getColorHexFromStr('#FDD148')),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(getColorHexFromStr('#FEE16D'))
                            .withOpacity(0.4)),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Color(getColorHexFromStr('#FEE16D'))
                              .withOpacity(0.5))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        Container(
                          alignment: Alignment.topLeft,
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('images/chris.jpg'))),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 120.0),
                        Container(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                            color: Colors.white,
                            iconSize: 30.0,
                          ),
                        ),
                        SizedBox(height: 15.0),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Hello , Pino',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'What do you want to buy?',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(getColorHexFromStr('#FEDF62')),
                                size: 30.0,
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontFamily: 'Quicksand'),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25.0),
            Stack(
              children: <Widget>[
                SizedBox(height: 10.0),
                Material(
                  elevation: 1.0,
                  child: Container(
                    height: 75.0,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/sofas.png'))),
                          ),
                          Text(
                            'Sofas',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/wardrobe.png'))),
                          ),
                          Text(
                            'Wardrobe',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/desks.png'))),
                          ),
                          Text(
                            'Desks',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75.0,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/dresser.png'))),
                          ),
                          Text(
                            'Dresser',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            itemCard(
                'finnNavin',
                'images/ottoman.jpg',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '248'),
            itemCard(
                'finnNavin',
                'images/sofa.png',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '2400'),
            itemCard(
                'finnNavin',
                'images/anotherchair.jpg',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '3000'),
            itemCard(
                'finnNavin',
                'images/wardrobe.png',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '248'),
            itemCard(
                'finnNavin',
                'images/sofas.png',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '2400'),
            itemCard(
                'finnNavin',
                'images/chair.jpg',
                'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                '3000'),
          ],
        )
      ],
    ));
  }

  Widget itemCard(
      String title, String imagePath, String description, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Center(
                  child: Container(
                    width: 175.0,
                    child: Text(
                      description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                    Container(
                      height: 40.0,
                      width: 50.0,
                      color: Color(getColorHexFromStr('#F9C335')),
                      child: Center(
                        child: Text(
                          '\$' + price,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: Color(getColorHexFromStr('#FEDD59')),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
