
import 'package:flutter/material.dart';

import 'constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
     
      decoration: BoxDecoration(
         color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child:const Center(
        child:  Text('Add',style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}