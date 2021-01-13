import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    var color = controller.page == page
        ? Theme.of(context).primaryColor
        : Colors.grey[700];
    return Material(
      child: InkWell(
        child: Container(
          height: 60,
          child: Row(
            children: [
              SizedBox(width: 32),
              Icon(icon, size: 32, color: color),
              SizedBox(width: 32),
              Text(text,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: color))
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).pop();
          controller.jumpToPage(page);
        },
      ),
      color: Colors.transparent,
    );
  }
}
