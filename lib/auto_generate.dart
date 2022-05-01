import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


// ignore: camel_case_types
class auto_gen extends StatefulWidget {
  const auto_gen({ Key? key }) : super(key: key);

  @override
  _auto_genState createState() => _auto_genState();
}

// ignore: camel_case_types
class _auto_genState extends State<auto_gen> {

  String data="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789`~!@#%^&*()_+-={}[]:|;'\\<>?,./";
  String pwd='';
  void autogen() {
    setState(() {
        if(t1.text.isEmpty) {
        Alert(
      context: context,
      type: AlertType.warning,
      title: "Alert",
      desc: "Values can't be empty...",
      buttons: [
        DialogButton(
          child: Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(75, 0, 130, 1.0),
        ),
      ],
    ).show();
        } else {
            List result = data.split('');
            result.shuffle();
            var x = int.parse(t1.text);
            List pwdarr = result.sublist(1,x+1);
            pwd=pwdarr.join("");
        }
    });
  }

  void clear() {
    setState(() {
      t1.text='';
      pwd='';
    });
  }
  
  final TextEditingController t1 = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        toolbarHeight: 75.0,
        title: Text("Generate password using\ndefault characters"),
      ),
      body: new Container(
        constraints:const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bckgrnd.jpg",
              ),
            fit: BoxFit.cover
            )
        ),
        padding: const EdgeInsets.all(45.0),
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Enter characters no.",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    controller: t1,
                  ),
                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                 Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    onPressed: autogen,
                    label: Text('Generate'),
                    icon: Icon(Icons.settings_applications),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
                      shadowColor: Colors.black,
                      primary: Colors.indigo[900],
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ) 
                    ),
              )),

                  new Padding(
                padding: const EdgeInsets.all(10.0),
                ),

                  Container(
              margin: const EdgeInsets.all(5),
              child: ElevatedButton.icon(
                onPressed: clear,
                label: Text('Clear'),
                icon: Icon(Icons.delete_rounded),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 40),
                  shadowColor: Colors.black,
                  primary: Colors.indigo[900],
                    textStyle: TextStyle(
                      fontSize: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )  
                ),
              )),

                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),
                  new Text(
                    "Password : ",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Padding(
                padding: const EdgeInsets.all(05.0),
                ),
                  new SelectableText(
                    "$pwd",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}