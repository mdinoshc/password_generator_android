import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class auto_gen extends StatefulWidget {
  const auto_gen({ Key? key }) : super(key: key);

  @override
  _auto_genState createState() => _auto_genState();
}

class _auto_genState extends State<auto_gen> {

  String data="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789`~!@#%^&*()_+-={}[]:|;'\\<>?,./";
  String pwd='';
  void autogen() {
    setState(() {
        if(t1.text.isEmpty) {
          showDialog(
        context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
            title: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.warning_rounded),
                  ),
                  TextSpan(
                    text: " Alert",
                  )
                ]
              )
              ),
            content: Text("Value can't be empty"),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, 
                child: Text("Ok")
                )
            ],
          );
        }
        );
        } else {
            List result = data.split('');
            result.shuffle();
            var x = int.parse(t1.text);
            List pwdarr = result.sublist(1,x+1);
            pwd=pwdarr.join("");
        }
        // t2.text=pwd;
      // }
    });
  }

  void clear() {
    setState(() {
      t1.text='';
      pwd='';
    });
  }
  
  // print(result);
  
  final TextEditingController t1 = new TextEditingController(text: "");
  // final TextEditingController t2 = new TextEditingController(text: "");

  final _formkey = GlobalKey<FormState>();
  // bool _isObscure=true;

  @override
  Widget build(BuildContext context) {
    // var pwd;
    return Scaffold(
      appBar: new AppBar(
        // backgroundColor: Colors.white,
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
            // colorFilter: ColorFilter.mode(Colors.white, BlendMode.dstATop),
            fit: BoxFit.cover
            )
        ),
        padding: const EdgeInsets.all(45.0),
        child: SingleChildScrollView(
          key: _formkey,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                // child: new Text(
                //   "Generate password using default characters",
                //   textAlign: TextAlign.center,
                //   style: new TextStyle(
                //     fontSize: 25.0,
                //   ),
                // ),
              ),
              new Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // new Text(
                  //   "No. of characters :",
                  //   style: new TextStyle(
                  //     fontSize: 15,
                  //   ),
                  // ),
                ],
              ),
              new TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      hintText: "Enter characters no.",
                      hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    controller: t1,
                    // validator: (value) {
                    //   if(value==null || value.isEmpty) {
                    //     return "Please enter a number";
                    //   }
                    //   return null; 
                    // }
                  ),
                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                  // new ElevatedButton(
                  // onPressed: autogen,
                  // child: Text(
                  //   "Generate"
                  // ),
                  // style: ElevatedButton.styleFrom(
                  //   fixedSize: const Size(250, 40),
                  //   textStyle: TextStyle(
                  //     fontSize: 20,
                  //   ) 
                  // ),
                  // ),

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

                  // new ElevatedButton(
                  // onPressed: clear,
                  // child: Text(
                  //   "Clear"
                  // ),
                  // style: ElevatedButton.styleFrom(
                  //   fixedSize: const Size(250, 40),
                  //   textStyle: TextStyle(
                  //     fontSize: 20,
                  //   ) 
                  // ),
                  // ),

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
                    // _isObscure == true
                    "$pwd",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  )
                  // TextFormField(
                  //   controller: t2,
                  //   onTap: () {
                  //     t2.text='$pwd';
                  //   },
                  // )
            ],
          ),
        ),
      ),
    );
  }
}