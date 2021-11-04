import 'package:flutter/material.dart';
import 'package:todo_app/color.dart';
import 'package:todo_app/recycle/recyclebin.dart';

class MenuBtn extends StatefulWidget {
  const MenuBtn({Key? key}) : super(key: key);

  @override
  _MenuBtnState createState() => _MenuBtnState();
}

class _MenuBtnState extends State<MenuBtn> {
  List<bool> isselected = [true, false, false];
  final padding = const EdgeInsets.only(top: 15, left: 15);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.task,
              color: primary,
            ),
            title: Text(
              "All Task",
              style: btntxt,
            ),
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.delete,
              color: primary,
            ),
            title: Text(
              "Recycle Bin",
              style: btntxt,
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Recycle(),
                  ),
                );
              });
            },
          ),
        ),
        Padding(
          padding: padding,
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: primary,
            ),
            title: Text(
              "Setting",
              style: btntxt,
            ),
            onTap: () {},
          ),
        ),
        // Padding(
        //   padding: padding,
        //   child: ListTile(
        //     leading: Icon(
        //       Icons.color_lens,
        //       color: primary,
        //     ),
        //     title: Text(
        //       "Theme",
        //       style: btntxt,
        //     ),
        //     onTap: () {},
        //   ),
        // ),
        // ExpansionTile(
        //   collapsedIconColor: primary,
        //   collapsedTextColor: primary,
        //   iconColor: primary,
        //   textColor: primary,
        //   leading: Icon(Icons.color_lens),
        //   title: Text("Theme"),
        //   children: [
        //     ToggleButtons(
        //       children: const [
        //         Icon(
        //           Icons.format_color_fill_outlined,
        //           color: Colors.cyan,
        //         ),
        //         Icon(
        //           Icons.format_color_fill_outlined,
        //           color: Colors.black,
        //         ),
        //         Icon(
        //           Icons.format_color_fill_outlined,
        //           color: Colors.brown,
        //         ),
        //       ],
        //       isSelected: isselected,
        //       onPressed: (int newIndex) {
        //         setState(() {
        //           for (var i = 0; i < isselected.length; i++) {
        //             if (i == newIndex) {
        //               isselected[i] = true;
        //             } else {
        //               isselected[i] = false;
        //             }
        //           }
        //         });
        //       },
        //     ),
        //   ],
        // ),
      ],
    );
  }

  final btntxt = TextStyle(
    color: primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
