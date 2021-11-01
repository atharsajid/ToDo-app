import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/homeScreen/class.dart';
import 'package:todo_app/homeScreen/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        drawer: drawer(),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () => showdeletedialog(context),
              child: Text("Show"),
            ),
            
          ],
        ),
        floatingActionButton: Circlefloatingbtn());
  }

  void showdeletedialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text("Delete"),
              content: Text("Are You sure to Delete"),
              actions: [
                CupertinoDialogAction(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("No"),
                  ),
                ),
                CupertinoDialogAction(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("yes"),
                  ),
                ),
              ],
            ),

        
      );
}
