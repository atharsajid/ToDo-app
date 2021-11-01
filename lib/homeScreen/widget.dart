import 'package:flutter/material.dart';

//appbar widget
appbar() {
  return AppBar(
    shadowColor: Colors.transparent,
    actions: [Icon(Icons.person),Padding(padding: EdgeInsets.only(right: 10))],
  );
}

//Drawer wideget
Widget drawer() {
  return Drawer();
}
