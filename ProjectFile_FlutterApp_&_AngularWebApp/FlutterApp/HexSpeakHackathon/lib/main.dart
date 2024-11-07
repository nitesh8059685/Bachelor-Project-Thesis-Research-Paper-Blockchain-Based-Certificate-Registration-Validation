import 'package:flutter/material.dart';
import 'dart:async';
import 'mainpage.dart';

 
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
  title: 'splash',
  home: SplashScreen(),
);
  }
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(color: Colors.blue,
          ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor:Colors.white ,
                    //foregroundColor:Colors.orange,
                    radius: 60,
                    child: Icon(Icons.school,size: 40,),
                    foregroundColor: Colors.black,
                     
                  ),
                  Padding(
                     padding: EdgeInsets.only(top: 30),),
                    Text('E-Services',style: new TextStyle(
                      fontSize: 20
                    ),),

                ],
              ),),
            Expanded(flex: 1,
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top:10)),
                Text('Just few Sec....')
              ],
            )
            )
          ],)
        ],
        ),
      
    );
  }
}