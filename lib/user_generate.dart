import 'package:flutter/material.dart';
// import 'package:cool_alert/cool_alert.dart';

class user_gen extends StatefulWidget {
  const user_gen({ Key? key }) : super(key: key);

  @override
  _user_genState createState() => _user_genState();
}

class _user_genState extends State<user_gen> {

String pwd1='';
String alpha='';
int num=0;
String symbol='';

final TextEditingController t1 = new TextEditingController(text: "");
final TextEditingController t2 = new TextEditingController(text: "");
final TextEditingController t3 = new TextEditingController(text: "");
final TextEditingController t4 = new TextEditingController(text: "");

void usergen() {
  setState(() {
    if(t1.text.isEmpty && t2.text.isEmpty && t3.text.isEmpty && t4.text.isEmpty) {
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
    num = int.parse(t3.text);
    String numstr = num.toString();
    alpha = t2.text;
    symbol = t4.text;
    String tot_data=numstr+alpha+symbol;
    List result=tot_data.split('');
    result.shuffle();
    var y = int.parse(t1.text);
    if(tot_data.length > y) {
      List pwd_arr = result.sublist(1,y+1);
      pwd1=pwd_arr.join("");
    } else {
      showDialog(
        context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert !"),
            content: Text("Incompatible password length..."),
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
      
    }
        }
  });
}

void clear() {
  setState(() {
    t1.text="";
    t2.text='';
    t3.text="";
    t4.text='';
    pwd1='';
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // backgroundColor: Colors.white,
        toolbarHeight: 75.0,
        title: Text("Generate password using\nuser's favorite characters"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Center(
                // child: new Text(
                //   "Generate password using user's favorite characters",
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
              new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "Enter characters no."),
                    controller: t1,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                new Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // new Text(
                  //   "Alphabets :",
                  //   style: new TextStyle(
                  //     fontSize: 15,
                  //   ),
                  // ),
                ],
              ),
              new TextField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(hintText: "Enter alphabets"),
                    controller: t2,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                new Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // new Text(
                  //   "Numbers :",
                  //   style: new TextStyle(
                  //     fontSize: 15,
                  //   ),
                  // ),
                ],
              ),
              new TextField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(hintText: "Enter numbers"),
                    controller: t3,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                new Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // new Text(
                  //   "Special characters :",
                  //   style: new TextStyle(
                  //     fontSize: 15,
                  //   ),
                  // ),
                ],
              ),
              new TextField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(hintText: "Enter special characters"),
                    controller: t4,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(20.0),
                ),

                  // new ElevatedButton(
                  // onPressed: usergen, 
                  // child: Text(
                  //   "Generate"
                  // ),
                  // // icon: Icon(Icons.settings_applications),
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
                    onPressed: usergen,
                    label: Text('Generate'),
                    icon: Icon(Icons.settings_applications),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
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
                    "$pwd1",
                    style: TextStyle(
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