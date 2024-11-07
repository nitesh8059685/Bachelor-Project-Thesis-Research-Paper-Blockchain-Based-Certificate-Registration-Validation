import 'package:flutter/material.dart';
import 'dashboard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login page",
      home: new LoginPage(),     
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(
        appBar: new AppBar(
          title: new Text("Login"),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context); },
              );
            },
          ),
        ),
        body: _body(),
      ),
    );
  }

  void dash(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }


Widget _body(){
return new Container(
      padding: EdgeInsets.only(
        top: 50,
        right: 10,
        left: 10,
      ),
      child: new Form(
        child:new Column(
          children: <Widget>[
            new TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20),
                ),
                labelText: "Registered Mobile No."
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(10),
            ),
            new RaisedButton(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 20,
              bottom: 20
            ),
            onPressed: dash,
            child: new Text("Login",style: new TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
            elevation: 20,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
            color: Colors.teal,
          )
          ],
        )
      ),
);
}

}