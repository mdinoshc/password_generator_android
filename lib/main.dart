import 'package:flutter/material.dart';
import 'package:pwd_gen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key? key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.indigo[900],
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: menu_page(),
    );
  }
}

