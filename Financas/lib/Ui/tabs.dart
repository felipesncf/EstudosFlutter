import 'package:Financas/Ui/favoritos.dart';
import 'package:Financas/Ui/home.dart';
import 'package:Financas/Ui/pedidos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [Home(), Pedidos(), Favoritos(), Favoritos()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finanças'),
        centerTitle: true,
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Minha conta")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text("Meus pedidos")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text("Favoritos")),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
