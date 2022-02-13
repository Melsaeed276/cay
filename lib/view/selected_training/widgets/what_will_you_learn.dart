import 'package:flutter/material.dart';

class WhatWillYouLearn extends StatelessWidget {
  const WhatWillYouLearn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          skills("Android"),
          skills("Flutter"),
          skills("iOS"),
          skills("Dart"),
          skills("React"),
          skills("Git"),
          
        ],
      ),
      
    );
  }

  Padding skills(String name) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
        child: Container(
          height: 30,
          width: 70,
          padding:const EdgeInsets.fromLTRB(8,4,8,4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFF57737A).withOpacity(0.8),
          ),
          child: Center(child: Text(name)),
        ),
      );
  }

  
}