import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// ignore: camel_case_types
class user_gen extends StatefulWidget {
  const user_gen({ Key? key }) : super(key: key);

  @override
  _user_genState createState() => _user_genState();
}

// ignore: camel_case_types
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
    if(t1.text.isEmpty || t2.text.isEmpty || t3.text.isEmpty || t4.text.isEmpty) {
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
    num = int.parse(t3.text);
    String numstr = num.toString();
    alpha = t2.text;
    symbol = t4.text;
    String totData=numstr+alpha+symbol;
    List result=totData.split('');
    result.shuffle();
    var y = int.parse(t1.text);
    if(totData.length > y) {
      List pwdArr = result.sublist(1,y+1);
      pwd1=pwdArr.join("");
    } else {
      showDialog(
        context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert !"),
            content: Text("Incompatible password length..."),
            actions: [
              // ignore: deprecated_member_use
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
        toolbarHeight: 75.0,
        title: Text("Generate password using\nuser's favorite characters"),
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
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[

              new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "Enter characters no.",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),),
                    controller: t1,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(05.0),
                ),

              new TextField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(hintText: "Enter alphabets",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),),
                    controller: t2,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(05.0),
                ),

              new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(hintText: "Enter numbers",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),),
                    controller: t3,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(05.0),
                ),

              new TextField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(hintText: "Enter special characters",
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.black),),
                    controller: t4,
                  ),

                  new Padding(
                padding: const EdgeInsets.all(10.0),
                ),

                   Container(
                  margin: const EdgeInsets.all(5),
                  child: ElevatedButton.icon(
                    onPressed: usergen,
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