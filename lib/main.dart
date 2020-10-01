import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home()
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('qiuzhi99'),
        backgroundColor: Colors.red[700],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Image.asset("assets/space-1.jpg")),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('1')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.teal,
                padding: EdgeInsets.all(30.0),
                child: Text('2')
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.lightGreenAccent,
                padding: EdgeInsets.all(30.0),
                child: Text('3')
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.amber[300],
      ),
    );
  }
}
