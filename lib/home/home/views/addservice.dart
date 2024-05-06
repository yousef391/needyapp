

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class addservice {
  void addneeds (String category ,String desc, String genre,String title, String location){

    CollectionReference needs  = FirebaseFirestore.instance.collection('Needs');
    needs.add({
      'catégorie' : category,
      'descreiption' :desc
      ,'genre' : genre,
      'servicetype':title,
      'location' :location
      ,'date' :DateTime.now(),
      'id' :'2',
      'name' :'yousef',
      'imageuser': 'images/categories/imm.png'



   } );
  }
  
}