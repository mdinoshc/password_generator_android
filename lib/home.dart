import 'package:flutter/material.dart';
import 'package:pwd_gen/auto_generate.dart';
import 'package:pwd_gen/user_generate.dart';
import 'package:pwd_gen/main.dart';

class menu_page extends StatefulWidget {
  const menu_page({ Key? key }) : super(key: key);

  @override
  _menu_pageState createState() => _menu_pageState();
}

ThemeData _LightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
);

bool _Light = true;

class _menu_pageState extends State<menu_page> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        constraints:const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bckgrnd.jpg",
              ),
            // colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop),
            fit: BoxFit.cover
            )
        ),
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: new Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(30.0),
                ),
                new Image.asset('assets/images/pwd.PNG', width: 200, height: 200),
              Center(
                child: new Text(
                  "Password",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              Center(
                child: new Text(
                  "Generator",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
                ),
              new ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>auto_gen()));
                  }, 
                  child: Text(
                    "Auto Generate"
                  ),
                  // child:Decoration: BoxDecoration(
                  //     gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
                  //   ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    primary: Colors.indigo[900],
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ), 
                  ),
                  ),
                  new Padding(
                padding: const EdgeInsets.all(10.0),
                ),
                   new ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>user_gen()));
                  }, 
                  child: Text(
                    "User Defined Generate"
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    shadowColor: Colors.black,
                    primary: Colors.indigo[900],
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) 
                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}