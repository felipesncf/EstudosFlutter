import 'package:LojaOnline/Views/detalheProduto.dart';
import 'package:LojaOnline/Views/productsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String tipo;

  ProductTile(this.tipo);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.grey,
        child: tipo == 'grid'
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 0.8,
                    child: Container(
                      color: Colors.red[400],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Isso é um teste',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              'Isso é um teste',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        )),
                  )
                ],
              )
            : Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red[400],
                      height: 250,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Isso é um teste',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Isso é um teste',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
      onTap: () {
        print('clicou no produto');
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetalheProduto('Nome do produto')));
      },
    );
  }
}
