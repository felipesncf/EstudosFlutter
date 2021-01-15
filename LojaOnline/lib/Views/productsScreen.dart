import 'package:LojaOnline/tiles/productTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProcuctScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Produtos'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.grid_on),
              ),
              Tab(
                icon: Icon(Icons.list),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            GridView.builder(
              padding: EdgeInsets.all(4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childAspectRatio: 0.65),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ProductTile('grid');
              },
            ),
            ListView.builder(
              padding: EdgeInsets.all(4),
              itemBuilder: (context, index) {
                return ProductTile('list');
              },
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
