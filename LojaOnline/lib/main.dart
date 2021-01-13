import 'package:LojaOnline/Views/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Loja',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141)),
    home: DrawerMenu(),
  ));
}
