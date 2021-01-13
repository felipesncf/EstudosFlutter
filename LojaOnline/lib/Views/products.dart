import 'package:LojaOnline/tiles/categoriasTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dividedTiles = ListTile.divideTiles(tiles: [
      Categoria(
          'https://cdn.icon-icons.com/icons2/2070/PNG/512/vest_icon_126545.png',
          'Coletes'),
      Categoria(
          'https://cdn.icon-icons.com/icons2/1489/PNG/512/tshirtoutline_102686.png',
          'Blusas'),
      Categoria(
          'https://cdn.icon-icons.com/icons2/1085/PNG/512/jeans_78213.png',
          'Calças'),
      Categoria(
          'https://cdn.icon-icons.com/icons2/1314/PNG/512/shirt_86551.png',
          'Camisetas')
    ], color: Colors.grey[500]);
    return ListView(
      children: dividedTiles,
    );
  }
}
