import 'package:flutter/material.dart';

class InfoPages extends StatelessWidget {
  const InfoPages({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset('assets/info/info1.jpg'),
          ),
          Text(name),

        ],
      ),
    );
  }
}
