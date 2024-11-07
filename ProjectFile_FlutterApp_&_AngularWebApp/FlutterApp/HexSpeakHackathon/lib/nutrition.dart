import 'package:flutter/material.dart';
void main()
{
  runApp(NutritionInfo());
}
class NutritionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nutrition(),
      
    );
  }
}
class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
 

  @override
  Widget build(BuildContext context) {
    return Theme(
          data: new ThemeData(
            primarySwatch: Colors.teal
          ),
          child: Scaffold(
        
        appBar: new AppBar(elevation: 15,
          title:new Text('Nutrition Information'),
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                 icon:Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.pop(context);},
              );
              },
        
          ),
          
        ),
        body:
           SingleChildScrollView(scrollDirection: Axis.vertical,
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(margin: EdgeInsets.only(
                  top: 10,
                  left:1
                ),
                  child:new Text('Summary',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,decoration: TextDecoration.underline),),
                  
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right:5),
                        child: new Text('Food provides the energy and nutrients that babies need to be healthy. For a baby, breast milk is best. It has all the necessary vitamins and minerals. Infant formulas are available for babies whose mothers are not able to or decide not to breastfeed.'),
                      ),
                  
                      
                   Padding(
                     padding: const EdgeInsets.only(
                       top:3,
                       right: 5
                     ),
                     child: new Text('Infants are usually ready to eat solid foods at about 6 months of age. Check with your health care provider for the best time for your baby to start. If you introduce one new food at a time, you will be able to identify any foods that cause allergies in your baby. Allergic reactions include a a rash, diarrhea, or vomiting.'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(
                       top:3,
                       right: 5

                     ),
                     child: new Text('Many parents are concerned about peanut allergies. When babies can eat foods that contain peanuts depends on their risk of food allergies:'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:10),
                     child: new Text('Most babies can have peanut products when they are about 6 months of age',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:5.0),
                     child: new Text('Babies who have mild to moderate eczema have a higher risk of food allergies. They usually can eat peanut products at about 6 months of age. If you have concerns about this, check with your babys health care provider.',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),

                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:5),
                     child: new Text("Babies who have severe eczema or egg allergies are at high risk for peanut allergies. If your baby is at high risk, check with your baby's health care provider. Your baby may need allergy testing. Your babys provider can also recommend when and how to give your baby peanut products.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top:5),
                     child: new Text("Avoid cow's milk before age 1, since it does not have all of the nutrients that babies need and babies cannot digest it",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:5),
                     child: new Text("Do not give your baby honey before 1 year of age. Honey may contain bacteria that can cause botulism in babies.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:5),
                     child: new Text("Unpasteurized drinks or foods (such as juices, milks, yogurt, or cheeses) may put your child at risk for an E. coli infection. E coli is a harmful bacteria that can cause severe diarrhea.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                   ),
                   
                   
                    ]
                    
                    
                    
                    
                    
                    ,
                  ),
                )
              ],
          ),
           ),
        )
          

        
        
              );
    

  }
}