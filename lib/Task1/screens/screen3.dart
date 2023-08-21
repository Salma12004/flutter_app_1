import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              SizedBox(width: 10,),
              Text("Menu", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w900),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Hot Drinks ", style: TextStyle(fontSize: 30, color: Colors.orange.shade900, fontWeight: FontWeight.w600),),
              Text(" Partition", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.normal),),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: screenHeight*0.18,
            width: screenWidth*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset('IMG_5072.JPG', height:120,width: 120,),
                SizedBox(width: 90,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cappacino", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic ),),
                    SizedBox(height: 30,),
                    Text("40 L.E   <3", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600 ),),
                    
                  ],
                )
              ],
            )
          ),

          SizedBox(height: 20,),
          Container(
            height: screenHeight*0.18,
            width: screenWidth*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset('IMG_5073.JPG', height:120,width: 120,),
                SizedBox(width: 90,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Mocha", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic ),),
                    SizedBox(height: 30,),
                    Text("40 L.E   <3", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600 ),),
                    
                  ],
                )
              ],
            )
          ),


          SizedBox(height: 20,),
          Container(
            height: screenHeight*0.18,
            width: screenWidth*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Image.asset('IMG_5075.JPG', height:120,width: 120,),
                SizedBox(width: 90,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Coffee", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic ),),
                    SizedBox(height: 30,),
                    Text("40 L.E   <3", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600 ),),
                    
                  ],
                )
              ],
            )
          ),
        ],
      )
    );
  }
}