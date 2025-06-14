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

  Widget Appdet(String app_text, String app_detail) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(app_text)
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(app_detail)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Appdet("App Version", _packageInfo.version),
      ],
      body: new Container(
        constraints:const BoxConstraints.expand(),
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
                    "Manual Generate"
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
            ],
          ),
        ),
      ),
    );
  }
}