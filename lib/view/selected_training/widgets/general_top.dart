import 'package:flutter/material.dart';

class GeneralTop extends StatelessWidget {
  const GeneralTop(
      {Key? key,
      required this.category,
      required this.name,
      required this.imagePath})
      : super(key: key);

  final String name, imagePath, category;

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFFEDF7F8);

    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 1),
            ],
            image: DecorationImage(
                image: AssetImage(imagePath), //!from Database
                fit: BoxFit.cover),
            borderRadius:const BorderRadius.vertical(bottom: Radius.circular(48)),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.3,
          left: MediaQuery.of(context).size.width / 6,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 100,
            decoration: BoxDecoration(
              color: color.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name, //!From Database
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  child: Text(
                    category, //!From Database
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 61, 57, 57)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}