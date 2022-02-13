import 'package:cay_platform/model/user.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class UserInfoPage extends StatefulWidget {
  UserInfoPage(
      {Key? key, required this.userName, required this.userTypeController})
      : super(key: key);
  TextEditingController userName;
  TextEditingController userTypeController;

  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  String dropdownValue = 'User';

  List<userType> type = [
    userType.user,
    userType.company,
    userType.mentor,
  ];

  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Name, Surname',
            style: Theme.of(context).textTheme.headline6,
          ),
          TextFormField(
            controller: widget.userName,
            decoration: textFormFieldDecoration(
              context: context,
              borderRadius: 20,
              label: 'Name',
              hint: 'Enter your Name',
            ),
          ),
          Text(
            'Enter the user type that you are going to do',
            style: Theme.of(context).textTheme.headline6,
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
                  icon: const SizedBox(),
                  elevation: 0,
                  style: Theme.of(context).textTheme.button,
                  alignment: AlignmentDirectional.center,
                  underline: const SizedBox(),
                  dropdownColor: Colors.blue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                      widget.userTypeController.text = newValue;
                    });
                  },
                  items: <String>[
                    'User',
                    'Company',
                    'Mentor',
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
