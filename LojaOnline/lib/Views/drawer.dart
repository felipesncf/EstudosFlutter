import 'package:LojaOnline/Views/home.dart';
import 'package:LojaOnline/Views/products.dart';
import 'package:LojaOnline/widgets/customDrawer.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Scaffold(
          body: Home(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: (Text('Produtos')),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: Products(),
        ),
        Container(color: Colors.black),
        Container(color: Colors.grey),
      ],
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
