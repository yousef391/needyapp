


import 'package:flutter/material.dart';

import '../color.dart';
import '../views/needsscreen.dart';


class needcard extends StatelessWidget {
   needcard({this.data});

final  data;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
    
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11,horizontal:14 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("${data["imageuser"]}",height: 60,width: 62,),
                
                  Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16), ),
                      SizedBox(height: 1,),
                      Text(data['genre'],style: TextStyle(fontSize: 12,color: Colors.lightBlue,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Row(children:[ Icon(Icons.location_pin,color:Colors.red,size: 14,),SizedBox(width: 4,),Text(data['location'],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)]),
                    ],
                  )
                  ,
                  Image.asset('images/categories/${data['catégorie']}.png',height: 54,width: 54,),
                ],
                
              ),
              SizedBox(height: 13,),
              Text(data['servicetype'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),textAlign: TextAlign.start,),
              SizedBox(height: 10,),
              Text(data['descreiption']),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pushNamed(needsscreen().id);
                }, child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 15),
                  child: Text('contact'),
                  
                ),style:ElevatedButton.styleFrom(
                  backgroundColor: primarycolor
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}