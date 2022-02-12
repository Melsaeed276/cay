import 'package:flutter/material.dart';

class CustomAppBarForHome extends StatelessWidget {
  const CustomAppBarForHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEDF7F8),
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          Builder(
              builder: (context) => Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: Icon(Icons.menu),
                      color: Colors.black,
                    ),
                  )),
        ],
      ),
    );
  }
}
