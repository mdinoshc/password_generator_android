import 'package:flutter/material.dart';
import 'package:pwd_gen/auto_generate.dart';
import 'package:pwd_gen/user_generate.dart';
import 'package:package_info_plus/package_info_plus.dart';

// ignore: camel_case_types
class menu_page extends StatefulWidget {
  const menu_page({ Key? key }) : super(key: key);

  @override
  _menu_pageState createState() => _menu_pageState();
}

// ignore: camel_case_types
class _menu_pageState extends State<menu_page> {
  get child => null;

  PackageInfo _packageInfo = PackageInfo(
      appName: 'Unknown',
      packageName: 'Unknown',
      version: 'Unknown',
      buildNumber: 'Unknown'
  );

  _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        constraints:const BoxConstraints.expand(),
        /*decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bckgrnd.jpg",
              ),
            fit: BoxFit.cover
            )
        ),*/
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: new Column(
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
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40), backgroundColor: Colors.indigo[900],
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    // shadowColor: Colors.black,
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
                    fixedSize: const Size(250, 40), backgroundColor: Colors.indigo[900],
                      foregroundColor: Colors.white,
                    shadowColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) 
                  ),
                  ),
              ListTile(
                title: Text("App Version"),
                subtitle: Text(_packageInfo.version),
              ),
              ListTile(
                title: Text("Build number"),
                subtitle: Text(_packageInfo.buildNumber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}