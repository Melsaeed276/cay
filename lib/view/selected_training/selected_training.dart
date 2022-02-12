import 'package:cay_platform/core/constants/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SelectedTraining extends StatefulWidget {
  const SelectedTraining({Key? key}) : super(key: key);

  @override
  _SelectedTrainingState createState() => _SelectedTrainingState();
}

class _SelectedTrainingState extends State<SelectedTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(),
          Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEDF7F8),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(48)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(0, 3),
                      spreadRadius: 2,
                      blurRadius: 3,
                    )
                  ]),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 12),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                alignment: Alignment.topLeft,
                child: Text("Description", style: TextStyle(fontSize: 20),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
