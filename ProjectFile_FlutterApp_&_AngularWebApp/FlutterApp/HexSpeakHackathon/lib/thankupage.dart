import 'package:flutter/material.dart';

class Thanku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThankYou(),
    );
  }
}

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data:new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(
        appBar: new AppBar(
          title: new Text("Registered"),
          leading: Builder(
              builder: (BuildContext context){
                return IconButton(
                  icon: const Icon(Icons.arrow_back),
            onPressed: () {  Navigator.popUntil(context, ModalRoute.withName('/')); },
                );
              },
            ),
        ),
        body: thankubody()
      ),
    );
  }

  Widget thankubody()
  {
    return Container(

      child: Center(child: new Text('''Thank You for Registration Your Temporary Id is "XYZ"''',style:new TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic
      ))),
    );
  }
}