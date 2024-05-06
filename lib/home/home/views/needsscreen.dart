import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sign_in/home/home/modals/needcard.dart';

import '../widgets/costumeappbar.dart';
import '../widgets/costumefloatingactionbutton.dart';
import '../widgets/needsbuilder.dart';


class needsscreen extends StatelessWidget {
 needsscreen({super.key});
CollectionReference Needs  = FirebaseFirestore.instance.collection("Needs");
 String id='needscreen';
  @override
  Widget build (BuildContext context) {
    return 
      

     Scaffold( 
       backgroundColor:  Colors.white,
      floatingActionButton:
     const  costumefloatingactionbutton(),
  
    
      body:Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 12),
        child: needsbuilder(Needs: Needs),
      )
  );
     
    
  
}}

