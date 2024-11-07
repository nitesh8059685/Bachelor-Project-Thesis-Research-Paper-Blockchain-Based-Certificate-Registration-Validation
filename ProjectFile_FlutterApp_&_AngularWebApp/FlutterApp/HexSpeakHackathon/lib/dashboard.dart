import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'vaccination.dart';
import 'nutrition.dart';
import 'changemobile.dart';

class Dash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
  title: 'Dashboard',
  home: new Dashboard(),
  
);
  }
}
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material myItems(IconData icon,String heading,color) {
    return Material(
    
      color: Colors.white,
      elevation: 15,
      shadowColor: Colors.teal,
      borderRadius: BorderRadius.circular(15),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Center(
                    child: Padding(
                    
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,style:TextStyle(fontSize: 15,color: Colors.teal,
                      
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
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: new ThemeData(
        primarySwatch: Colors.teal
      ),
          child: Scaffold(
        backgroundColor: Colors.teal[50],

        appBar: new AppBar(
          actions: <Widget>[
          new RawMaterialButton(
           
            child: new Text('Logout',style: new TextStyle(color: Colors.white,fontSize: 16),),
          
            elevation: 15,
            onPressed: null,
          )

          ],
          leading: Builder(

            builder: (BuildContext context){
              return IconButton(



                icon: const Icon(Icons.arrow_back),
          onPressed: () {  Navigator.pop(context); },
              );
            },
          ),
          
          title: new Text('Dashboard'),
        ),
        body:StaggeredGridView.count(crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12),
          children: <Widget>[
            
            InkWell(onTap: (){
              setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Vaccine())) ;
              });
            },
              child: myItems(Icons.apps,"Vaccination Table",0xFFE57373)),
            InkWell(
              onTap: (){
                setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeMobile())); 
                });
              },
              child: myItems(Icons.phone_android,"Change Registered Mobile No.",0xFF64B5F6)),
            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Nutrition()));
              },
              child: myItems(Icons.info,"Nutrition info",0xFFFFFF176)),
            myItems(Icons.contacts,"Contact Us",0xFF81C784),
            
          ],
          staggeredTiles: [
            
             
           StaggeredTile.extent(2,183),
           
            
            StaggeredTile.extent(2,183),
            StaggeredTile.extent(2,183),
            StaggeredTile.extent(2,183), 
          ],
          
        ),
        

        ),
    );

      
      
    
  }
}