import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/color.dart';

import 'package:todo_app/homeScreen/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<String> tasklist = [];
  String addtextfield = "";

  //isNotEmpty function
  submit() {
    setState(() {
      tasklist.add(addtextfield);
      textadd.clear();
      Navigator.pop(context);
    });
  }

  notsubmit() {
    setState(() {
      Navigator.pop(context);
    });
  }
  //edit function

  TextEditingController textadd = TextEditingController();
  TextEditingController textedit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        drawer: drawer(),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: tasklist.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      offset: const Offset(0.0, 10),
                    )
                  ]),
                  child: ListTile(
                    leading: Text("${index + 1}"),
                    title: Text(
                      tasklist[index],
                    ),
                    trailing: deleteAndEdit(index),
                  ),
                );
              },
            ),
          ],
        ),
        floatingActionButton: floatingbtn());
  }

//delete and edit icon button

  Widget deleteAndEdit(int index) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                tasklist.removeAt(index);
              });
            },
            icon: Icon(
              Icons.delete,
              color: primary,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                EditDialogbox(context, index);
                textedit.text = tasklist[index];
              });
            },
            icon: Icon(
              Icons.edit,
              color: primary,
            ),
          ),
        ],
      ),
    );
  }

//Floating action Add button
  Widget floatingbtn() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          addDialogbox(context);
        });
      },
      child: const Icon(Icons.add),
    );
  }

//Add dialogbox
  void addDialogbox(
    BuildContext context,
  ) =>
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Add New Task"),
          content: TextField(
            onChanged: (value) {
              addtextfield = value;
            },
            controller: textadd,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                textadd.text.isNotEmpty ? submit() : notsubmit();
              },
              child: Text("Add"),
            ),
          ],
        ),
      );

//Add dialogbox
  void EditDialogbox(BuildContext context, int index) => showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
          title: Text("Edit Your Task"),
          content: TextField(
            onChanged: (value) {
              addtextfield = value;
            },
            controller: textedit,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  tasklist[index] = addtextfield;
                  textedit.clear();
                  Navigator.pop(context);
                });
              },
              child: Text("Confirm"),
            ),
          ],
        ),
      );
}
