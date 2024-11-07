 
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'generatenewbirth.dart';
import 'download.dart';
import 'checkstatus.dart';
import 'lost.dart';
import 'login.dart';
import "FAQ's.dart";
import 'package:flutter/services.dart';
import 'Howtoapply.dart';
import 'feedback.dart';
import 'generatenewdeath.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return new MaterialApp(
  title: 'Home',
  home: new Homepage(),
  
);
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

   
   
  @override
 Material myItems(IconData icon,String heading,color) {
    return Material(
    
      color: Colors.white,
      elevation: 15,
      
      //shadowColor: Colors.white,
      
      borderRadius: BorderRadius.circular(15),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Center(
                    child: Padding(
                    
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,style:TextStyle(fontSize: 20,color: Colors.black,
                      
                      ),),
                    ),
                    
                  ),
                  Material(elevation: 20,
                  color:new Color(color),
                  borderRadius: BorderRadius.circular(24),
                  
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(icon,color: Colors.white,size: 30)
                    
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),


    );
   }
  Widget build(BuildContext context) {
    
        
          return Theme(
            data: new ThemeData(
              primarySwatch: Colors.teal
            ),
                      child: new Scaffold(
        backgroundColor: Colors.white,
        drawer: new Drawer(
            child: new ListView(

              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountEmail: new Text("Welcome!"),
                  accountName: new Text("Xyz"),
                  
                ),
                new ListTile(
                  //dense: true,
                  trailing: new Icon(Icons.border_color),
                  title: new Text("How To Apply"),
                  onTap: (){
                    setState(() {
                    
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HowToApply()));
                    });
                  },
                ),
                new ListTile(
                  //dense: true,
                  trailing: new Icon(Icons.info),
                  title: new Text("FAQ's"),
                  onTap: (){
                    setState(() {
                    
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Faq1()));
                    });
                  },
                ),
                new ListTile(
                  //dense: true,
                  trailing: new Icon(Icons.feedback),
                  title: new Text("Feedback"),
                  onTap: (){
                    setState(() {
                    
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedBack()));
                    });
                  },
                ),
                new ListTile(
                  trailing: new Icon(Icons.close),
                  title: new Text("Close"),
                  onTap: (){
                    setState(() {
                      SystemNavigator.pop();
                    });
                  },
                ),
              ],
            ),
        ),
        appBar: new AppBar(
          elevation: 15,
        title: new Text("HOME"),
        actions: <Widget>[
            /*new Text("Login",style: new TextStyle(
              height: 2,
              fontSize: 20,

            )),*/
            new RawMaterialButton(
              onPressed: login,
              //color: Colors.teal,
              child: new Center(
                child:new Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),)
              ),
            ),
            ],
        ),
      body:StaggeredGridView.count(crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 7,
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5),
        children: <Widget>[
            
            InkWell(onTap: (){
              setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateNew())) ;
              });
            },
              child: myItems(Icons.receipt,"Registration for Birth",0xFF4DB6AC)),
            InkWell(
              onTap: (){
                setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateNewDeath())); 
                });
              },
              child: myItems(Icons.phone_android,"Registration for Death",0xFF4DB6AC)),
            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Check()));
              },

              child: myItems(Icons.info,"Check Status",0xFF4DB6AC)),
              InkWell(
                onTap:(){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Download()));},
          child:  myItems(Icons.file_download,"Download Certificate",0xFF4DB6AC)),
          InkWell(
            onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>RetrieveCertificate()));},
           child: myItems(Icons.search,"Retrieve Lost Data",0xFF4DB6AC)),
            
        ],
        staggeredTiles: [
            
             
         
         StaggeredTile.extent(2,150),
         StaggeredTile.extent(2,150), 
            StaggeredTile.extent(2,150),
            StaggeredTile.extent(2,150),
            StaggeredTile.extent(2,150), 
        ],),
            
        

      
      
            ),
          );
      
  }
      
  void login(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }


  }