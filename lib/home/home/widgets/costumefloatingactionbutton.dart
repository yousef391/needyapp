import 'package:flutter/material.dart';


import '../color.dart';
import '../views/addscreen.dart';

class costumefloatingactionbutton extends StatelessWidget {
  const costumefloatingactionbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

       onPressed: () {
        Navigator.of(context).pushNamed(addscreen().id);          
       },
       child: Icon(Icons.add,size:24,),
       backgroundColor: primarycolor,
     );
  }
}