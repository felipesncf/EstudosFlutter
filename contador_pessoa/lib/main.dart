import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String message = "Pode Entrar!";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
    });
    if (_people >= 0 && _people <= 5) {
      message = "Pode Entrar!";
    } else if (_people < 0) {
      setState(() {
        message = "Mundo invertido?!";
      });
    } else if (_people > 5) {
      setState(() {
        message = "Lotado parcero!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _addPeopleButton("+1", 1),
                _addPeopleButton("-1", -1),
              ],
            ),
            Text(
              message,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        )
      ],
    );
  }

  Widget _addPeopleButton(String text, int quant) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FlatButton(
        child: Text(text, style: TextStyle(fontSize: 40, color: Colors.white)),
        onPressed: () {
          _changePeople(quant);
        },
      ),
    );
  }
}
