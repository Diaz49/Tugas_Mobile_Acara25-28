import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Register(),
  ));
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool? checkis = false;

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerHp = new TextEditingController();

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 125.0,
        child: Column(children: <Widget>[
          new Text("Nama Lengkap : ${controllerNama.text}"),
          Padding(padding: EdgeInsets.only(top: 5)),
          new Text("Password Anda : ${controllerPass.text}"),
          Padding(padding: EdgeInsets.only(top: 5)),
          new Text("Nomer Hp anda : ${controllerHp.text}"),
          Padding(padding: EdgeInsets.only(top: 10)),
          new ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Save Register",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          )
        ]),
      ),
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: new Text(
          "Register",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline, color: Colors.black))
        ],
      ),
      body: new ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(30.0),
            child: new Column(children: <Widget>[
              Center(
                child: new Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Username",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              new TextFormField(
                controller: controllerNama,
                decoration: new InputDecoration(
                    hintText: "Silahkan Isi Nama",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              new TextFormField(
                controller: controllerPass,
                obscureText: true,
                decoration: new InputDecoration(
                    hintText: "Silahkan Isi Password",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Repeat Password",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              new TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    hintText: "Silahkan Isi Ulang Password",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              new TextFormField(
                controller: controllerHp,
                decoration: new InputDecoration(
                    hintText: "Silahkan Isi Nomer Hp",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                  child: CheckboxListTile(
                title: Text("If you agree to create an account then tick"),
                value: checkis,
                onChanged: (newbool) {
                  setState(() {
                    checkis = newbool;
                  });
                },
              )),
              ElevatedButton(
                child:
                    Text("Make Account", style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {
                  kirimdata();
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "PlayChat is an app to connect with everyone. contact admin if there is a problem",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Text(
              //       "PlayChat is an app to connect with everyone. contact admin if there is a problem"),
              // )
            ]),
          ),
        ],
      ),
    );
  }
}
