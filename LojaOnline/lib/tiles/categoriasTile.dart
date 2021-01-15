import 'package:LojaOnline/Views/productsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriaTile extends StatelessWidget {
  final String icon;
  final String name;

  CategoriaTile(this.icon, this.name);

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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProcuctScreen()));
      },
    );
  }
}
