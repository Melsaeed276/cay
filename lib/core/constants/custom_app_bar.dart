import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEDF7F8),
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          IconButton(onPressed: ()=>Navigator.pop(context), 
          icon:const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
