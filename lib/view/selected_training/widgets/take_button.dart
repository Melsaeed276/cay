import 'package:flutter/material.dart';

class TakeTrainingButton extends StatelessWidget {
  const TakeTrainingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 3),
                blurRadius: 3,
                spreadRadius: 3),
          ],
        ),
        padding: const EdgeInsets.all(4),
        width: 200,
        child: const Center(
            child: Text(
          "Take This Training",
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
    );
  }
}
