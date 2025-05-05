import 'package:flutter/material.dart';
import 'package:pwd_gen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        // brightness: Brightness.dark,
      ),
      home: new menu_page(),
    );
  }
}


