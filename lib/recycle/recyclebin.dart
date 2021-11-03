import 'package:flutter/material.dart';
import 'package:todo_app/color.dart';
import 'package:todo_app/homeScreen/homescreen.dart';
import 'package:todo_app/homeScreen/widget.dart';

class Recycle extends StatefulWidget {
  const Recycle({Key? key}) : super(key: key);

  @override
  _RecycleState createState() => _RecycleState();
}

class _RecycleState extends State<Recycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarR(),
      floatingActionButton: floatingbtn(),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: recycleList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    offset: const Offset(0.0, 10),
                  )
                ]),
                child: ListTile(
                  leading: Text(
                    "${index + 1}",
                    style: deletedtask,
                  ),
                  title: Text(
                    recycleList[index],
                    style: deletedtask,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          tasklist.add(
                            recycleList[index],
                          );
                          recycleList.removeAt(index);
                        },
                      );
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: primary,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget floatingbtn() {
    return FloatingActionButton(
      backgroundColor: primary,
      onPressed: () {
        setState(() {
          confirmdialog(context);
        });
      },
      child: Icon(
        Icons.delete,
        color: white,
      ),
    );
  }

  dynamic confirmdialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete All"),
          content: Text("Are you Sure to Delete?"),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    recycleList.clear();
                    Navigator.pop(context);
                  },
                );
              },
              child: Text("yes"),
            ),
          ],
        );
      },
    );
  }

  final deletedtask = TextStyle(
    color: grey,
  );

  //appbar for recycle
  appbarR() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          });
        },
        icon: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      shadowColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Recycle Bin",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        Padding(padding: EdgeInsets.only(right: 10))
      ],
    );
  }
}

List<String> recycleList = [];
