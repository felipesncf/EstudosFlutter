import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  final String icon;
  final String name;

  Categoria(this.icon, this.name);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(icon),
      ),
      title: Text(name),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        print('detalhe');
      },
    );
  }
}