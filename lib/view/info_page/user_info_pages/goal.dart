import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectGoal extends StatefulWidget {
  const SelectGoal({Key? key, this.goalController}) : super(key: key);
  final TextEditingController? goalController;

  @override
  State<SelectGoal> createState() => _SelectGoalState();
}

class _SelectGoalState extends State<SelectGoal> {
  String dropdownValue = 'Select Goal';
  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('assets/info/info1.jpg'),
          ),
          const SizedBox(height: 10),
          Text(
            'Select your goal',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: info.size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: null,
                  elevation: 16,
                  style: Theme.of(context).textTheme.button,
                  underline: null,
                  dropdownColor: Colors.blue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Select Goal',
                    'Mobile Development',
                    'Web Development',
                    'Data Analysis'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
