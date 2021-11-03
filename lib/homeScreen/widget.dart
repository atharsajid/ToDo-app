import 'package:flutter/material.dart';
import 'package:todo_app/color.dart';
import 'package:todo_app/homeScreen/btnClass.dart';

//appbar widget
appbar() {
  return AppBar(
    shadowColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      "ToDo List",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.person)),
      Padding(padding: EdgeInsets.only(right: 10))
    ],
  );
}

//Drawer wideget
Widget drawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(dpimage),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
            ),
          ),
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //backgroun profile image
              Container(
                height: 120,
                width: 120,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: white,
                    width: 3,
                  ),
                  image: DecorationImage(
                    image: AssetImage(dpimage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
                child: Text(
                  "MUHAMMAD ATHAR",
                  style: TextStyle(
                    color: white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
        MenuBtn(),
      ],
    ),
  );
}
