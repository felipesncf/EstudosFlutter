import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DetalheProduto extends StatefulWidget {
  final String nome;

  DetalheProduto(this.nome);

  @override
  _DetalheProdutoState createState() => _DetalheProdutoState(nome);
}

class _DetalheProdutoState extends State<DetalheProduto> {
  final String nome;
  String size;
  _DetalheProdutoState(this.nome);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(nome),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.orange,
                ),
              ],
              dotColor: primaryColor,
              dotSize: 4,
              autoplay: false,
              dotSpacing: 15,
              dotBgColor: Colors.transparent,
              dotIncreasedColor: primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Nome do produto',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 3,
                ),
                Text(
                  'R\$ 100,00',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Tamanho',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 34,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.5),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            size = 'p';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: size == 'p'
                                      ? primaryColor
                                      : Colors.grey[500],
                                  width: 3)),
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'P',
                            style: TextStyle(
                                color: size == 'p'
                                    ? primaryColor
                                    : Colors.grey[500]),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            size = 'm';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: size == 'm'
                                      ? primaryColor
                                      : Colors.grey[500],
                                  width: 3)),
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'M',
                            style: TextStyle(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            size = 'g';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(
                                  color: size == 'g'
                                      ? primaryColor
                                      : Colors.grey[500],
                                  width: 3)),
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'G',
                            style: TextStyle(
                                color: size == 'g'
                                    ? primaryColor
                                    : Colors.grey[500]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 44,
                  child: RaisedButton(
                    onPressed: size != null ? () {} : null,
                    child: Text('Adicionar ao carrinho'),
                    color: primaryColor,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Descrição',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Descrição do produto',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
