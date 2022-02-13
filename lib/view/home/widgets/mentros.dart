import 'package:flutter/material.dart';

class Mentors extends StatelessWidget {
  const Mentors({
    Key? key,
    required this.imagePath,
    required this.name,
  }) : super(key: key);

  final imagePath, name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFFEDF7F8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(0, 3),
                spreadRadius: 2,
                blurRadius: 2,
              ),
            ]),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagePath)),
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 3),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ]),
                ),
              ),
              flex: 2,
            ),
             Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  name,
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
