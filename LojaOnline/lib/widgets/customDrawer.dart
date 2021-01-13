import 'package:LojaOnline/tiles/drawerTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const int INICIO = 0;
const int PRODUTOS = 1;
const int LOJAS = 2;
const int PEDIDOS = 3;

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.fromLTRB(32, 16, 16, 8),
                height: 170,
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      left: 0,
                      child: Text('Estudo flutter\nLoja',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.bold)),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Olá,',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          GestureDetector(
                            child: Text(
                              'Entre ou cadastre-se >',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              print('tentou entrar');
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    DrawerTile(Icons.home, 'Início', pageController, INICIO),
                    DrawerTile(
                        Icons.list, 'Produtos', pageController, PRODUTOS),
                    DrawerTile(Icons.location_on_outlined, 'Lojas',
                        pageController, LOJAS),
                    DrawerTile(Icons.playlist_add_check, 'Meus pedidos',
                        pageController, PEDIDOS)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDrawerBack() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 203, 236, 241), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    );
  }
}
