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
        List result = data.split('');
        result.shuffle();
        var x = int.parse(t1.text);
        List pwdarr = result.sublist(1,x+1);
        pwd=pwdarr.join("");
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

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // var pwd;
    return Scaffold(
      appBar: new AppBar(
        // backgroundColor: Colors.white,
      ),
      body: new Container(
        padding: const EdgeInsets.all(45.0),
        child: SingleChildScrollView(
          key: _formkey,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: new Text(
                  "Generate password using default characters",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
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
                    decoration: new InputDecoration(hintText: "Enter characters no."),
                    controller: t1,
                    // validator: (value) {
                    //   if(value==null || value.isEmpty) {
                    //     return "Please input some numbers";
                    //   }
                    //   return null;
                    // }
                  ),
                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),
                  new ElevatedButton(
                  onPressed: autogen,
                  child: Text(
                    "Generate"
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ) 
                  ),
                  ),
                  new Padding(
                padding: const EdgeInsets.all(10.0),
                ),
                  new ElevatedButton(
                  onPressed: clear,
                  child: Text(
                    "Clear"
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    textStyle: TextStyle(
                      fontSize: 20,
                    ) 
                  ),
                  ),
                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),
                  new Text(
                    "Password : ",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
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