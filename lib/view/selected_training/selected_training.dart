import 'package:cay_platform/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SelectedTraining extends StatefulWidget {
  const SelectedTraining(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.category})
      : super(key: key);

  final String imagePath, name, category;

  @override
  _SelectedTrainingState createState() => _SelectedTrainingState();
}

class _SelectedTrainingState extends State<SelectedTraining> {
  Color color = const Color(0xFFEDF7F8);
  Color color2 = const Color(0xFFC9FBFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: ListView(
        children: [
          const CustomAppBar(),
          Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(48)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 5),
                    spreadRadius: 2,
                    blurRadius: 3,
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 2),
                      blurRadius: 3,
                      spreadRadius: 1),
                ],
                      image: DecorationImage(
                        
                          image: AssetImage(widget.imagePath), //!from Database
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.name, //!From Database
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      widget.category, //!From Database
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2),
          Padding(
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
                    children: const [
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
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
              child:const Center(
                  child:  Text(
                "Take This Training",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
            ),
          )
        ],
      ),
    );
  }
}
