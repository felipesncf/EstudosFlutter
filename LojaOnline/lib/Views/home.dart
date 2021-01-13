import 'dart:async';
import 'dart:convert';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const request = 'https://api.hgbrasil.com/finance?format=json&key=1b676752';
var linksImg = [];
var sizeImg = [];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBodyBack(),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Novidades'),
                centerTitle: true,
              ),
            ),
            FutureBuilder<Map>(
              future: popularLista(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 500,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                } else {
                  return SliverStaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    staggeredTiles: sizeImg.map(
                      (size) {
                        return StaggeredTile.count(
                            int.parse(size.toString().split(',')[0]),
                            int.parse(size.toString().split(',')[1]));
                      },
                    ).toList(),
                    children: linksImg.map((img) {
                      return FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: img,
                        fit: BoxFit.cover,
                      );
                    }).toList(),
                  );
                }
              },
            )
          ],
        )
      ],
    );
  }

  Widget _buildBodyBack() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 211, 118, 130),
        Color.fromARGB(255, 253, 181, 168)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
    );
  }
}

// Future<Map> getData() async {
//   http.Response response = await http.get(request);
//   return json.decode(response.body);
// }

Future<Map> popularLista() async {
  http.Response response = await http.get(request);
  if (linksImg.length == 0) {
    linksImg.add(
        'https://images.pexels.com/photos/5058581/pexels-photo-5058581.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260');
    linksImg.add(
        'https://images.pexels.com/photos/6389730/pexels-photo-6389730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
    linksImg.add(
        'https://images.pexels.com/photos/6291574/pexels-photo-6291574.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500');
    linksImg.add(
        'https://images.pexels.com/photos/5721364/pexels-photo-5721364.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
    linksImg.add(
        'https://images.pexels.com/photos/5272934/pexels-photo-5272934.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500');
  }
  if (sizeImg.length == 0) {
    sizeImg.add('2,1');
    sizeImg.add('2,2');
    sizeImg.add('1,2');
    sizeImg.add('1,2');
    sizeImg.add('2,1');
  }
  return json.decode(response.body);
}
