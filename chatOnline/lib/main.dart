import 'package:chatOnline/ui/chat_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Chatpage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        )),
  ));
  Firestore.instance
      .collection('mensagens')
      .document()
      .setData({'texto': 'hello word2 ', 'from': 'felipe'});
}
