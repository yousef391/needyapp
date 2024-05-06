import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sign_in/home/home/widgets/titleandseeall.dart';


import '../views/categorie.dart';
import '../views/needsscreen.dart';
import 'categoriesbuilder.dart';
import 'needsbuilder.dart';



class homebody extends StatelessWidget {
  const homebody({
   
    required this.categories,
    required this.needs,
  });

  final CollectionReference<Object?> categories;
  final CollectionReference<Object?> needs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15,left: 15,top: 24),
      child:   
      Column(
       children:[
           titleAndseeall(title: "Categories",ontap: () => Navigator.of(context).pushNamed(categoriesscreen().id),),
      const   SizedBox(height: 10,),
            categoriesbuilder(Categories: categories),
           const   SizedBox(height: 16,),
             titleAndseeall(title: "Posts", ontap: () =>Navigator.of(context).pushNamed( needsscreen().id) ,),
            const   SizedBox(height: 16,),
                 Expanded(child: needsbuilder(Needs: needs)),

               

     ] )
      
    );
  }
}



