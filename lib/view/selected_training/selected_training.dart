import 'package:cay_platform/view/selected_training/widgets/description.dart';
import 'package:cay_platform/view/selected_training/widgets/general_top.dart';
import 'package:cay_platform/view/selected_training/widgets/take_button.dart';
import 'package:cay_platform/view/selected_training/widgets/what_will_you_learn.dart';
import 'package:flutter/material.dart';

import '../../widgets/widget.dart';

class SelectedTraining extends StatefulWidget {
  const SelectedTraining({
    Key? key,
    required this.category,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  final String name, imagePath, category;

  @override
  _SelectedTrainingState createState() => _SelectedTrainingState();
}

class _SelectedTrainingState extends State<SelectedTraining> {
  Color color2 = Color.fromARGB(255, 245, 251, 252);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: ListView(
        children: [
          const CustomAppBar(),
          GeneralTop(
              category: widget.category,
              imagePath: widget.imagePath,
              name: widget.name),
          const Description(),
          const SizedBox(height: 30),
          Container(
            height: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xFFEDF7F8),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.2),
                    offset: const Offset(0, -3),
                    spreadRadius: 2,
                    blurRadius: 2,
                  )
                ]),
            child: const Text(
              "What will you learn",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          const WhatWillYouLearn(),
          Container(
            padding: const EdgeInsets.all(8),
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xFFEDF7F8),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(32),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.2),
                    offset: const Offset(0, 3),
                    spreadRadius: 2,
                    blurRadius: 2,
                  )
                ]),
          ),
          const SizedBox(height: 30),
          const TakeTrainingButton()
        ],
      ),
    );
  }
}
