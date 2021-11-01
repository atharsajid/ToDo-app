import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/homeScreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:const AppBarTheme(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.purple),
          primarySwatch: Colors.purple,
          textTheme: TextTheme(
              bodyText1: GoogleFonts.ubuntu(
            fontSize: 18,
            color: Colors.white,
          ))),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
