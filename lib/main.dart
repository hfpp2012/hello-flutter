import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Card()),
  );
}

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int cardLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                cardLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800]),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/thumb.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(height: 90.0, color: Colors.grey[800]),
                Text('NAME',
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                SizedBox(height: 10.0),
                Text('Chun-Li',
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Text('CURRENT LEVEL',
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                SizedBox(height: 10.0),
                Text('$cardLevel',
                    style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text('hfpp2012@gmail.com',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 18.0,
                            letterSpacing: 1.0))
                  ],
                )
              ],
            )));
  }
}
