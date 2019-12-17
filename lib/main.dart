import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'People Counter',
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _mainText = 'Enjoy!';

  void _updatePeople (int value) {
    setState(() {
      _people+= value;

      if (_people < 0) {
        _mainText = 'Anything is worong.';
      } else if (_people > 49) {
        _mainText = 'Wooooww!!';
      }
      else {
        _mainText = 'Enjoy!';
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        'images/gocaseteam.jpeg',
        fit: BoxFit.cover,
        height: 1000.0
      ),
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text(
        'Gocasers: $_people', 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: FlatButton(
            child: Text(
              '+1',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35.0)
            ),
            onPressed: () {
              _updatePeople(1);
            },
          )
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: FlatButton(
            child: Text(
              '-1',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35.0)
            ),
            onPressed: () {
             _updatePeople(-1);
            },
          )
        ),
      ],),
      Text(
        _mainText, 
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0),
      )
    ],)
    ],);
  }
}