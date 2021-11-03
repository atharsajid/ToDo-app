import 'package:flutter/material.dart';

class MenuBtn extends StatefulWidget {
  const MenuBtn({Key? key}) : super(key: key);

  @override
  _MenuBtnState createState() => _MenuBtnState();
}

class _MenuBtnState extends State<MenuBtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.task,
          ),
          label: Text("All Task"),
        ),
      ],
    );
  }
}
