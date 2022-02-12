import 'package:flutter/material.dart';

class CustomProfilePicture extends StatelessWidget {
  const CustomProfilePicture({ Key? key, required this.height, required this.width }) : super(key: key);
  final double height,width;
  //!final Widget widget; 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget)),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 1,
              offset:const Offset(0, 3),
            ),
          ],
          color:const Color(0xFFDBF0FF),//!Theme
          shape: BoxShape.circle,
          image:const DecorationImage(
            image: AssetImage(
                "assets/user/avatar1.png"), //? We have to take from database
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}