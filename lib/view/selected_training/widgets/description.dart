import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description
  }) : super(key: key);

  final description;

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFFEDF7F8);

    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
      child: Center(
        child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300.withOpacity(0.3),
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 3),
              ],
            ),
            width: MediaQuery.of(context).size.width / 1.4,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               const Text(
                  "Description",  
                  style: TextStyle(fontSize: 20),
                ),
                SingleChildScrollView(
                  child: Text(
                    description,
                    style: const TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
