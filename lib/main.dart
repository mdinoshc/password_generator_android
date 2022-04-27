import 'package:flutter/material.dart';
import 'package:pwd_gen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

// ThemeData _LightTheme = ThemeData(
//   brightness: Brightness.light,
// );

// ThemeData _darkTheme = ThemeData(
//   brightness: Brightness.dark,
// );

// bool _Light = true;
// Color c = const Color.fromRGBO(3, 37, 126, 100);

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

