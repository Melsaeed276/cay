import 'package:flutter/material.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem({ Key? key, required this.icon, required this.text }) : super(key: key);

  final IconData icon;
  final String text;

  //final Widget widget;  //!When we want to use Navigation. We will use it

  @override
  Widget build(BuildContext context) {
  Color color = const Color(0xFFF3F3F3);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 44, 8),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
        },
        child: Container(
          padding:const EdgeInsets.fromLTRB(8, 14, 8, 14),
          decoration: BoxDecoration(
              borderRadius:const BorderRadius.horizontal(right: Radius.circular(32)),
              color:const Color(0xFF57737A), //!Theme
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.3),
                  offset:const Offset(3, 3),
                )
              ]),
          child: Row(
            children: [
              Icon(
                icon,
                color:color, //!Theme
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(color: color, fontWeight: FontWeight.w500),//!Theme
              ),
            ],
          ),
        ),
      ),
    );
  }
}