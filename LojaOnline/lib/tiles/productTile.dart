import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String tipo;

  ProductTile(this.tipo);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: tipo == 'grid'
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
              )
            : Row(),
      ),
    );
  }
}
