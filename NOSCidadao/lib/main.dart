import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Entrada(),
  ));
}

class Entrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(0, 165, 255, 1),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'NOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto-Black',
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Cidadão',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway-Light',
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    fontSize: 40,
                  ),
                )
              ],
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.1,
                child: Container(
                  color: Color.fromRGBO(0, 229, 135, 1),
                  child: Text(
                    'CRIAR NOVA CONTA',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.1,
            child: Container(
              color: Color.fromRGBO(0, 229, 135, 1),
              child: Text(
                'UTILIZAR CONTA JÁ EXISTENTE',
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
