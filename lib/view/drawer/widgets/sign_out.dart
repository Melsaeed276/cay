import 'package:flutter/material.dart';

class SignOutPart extends StatelessWidget {
  const SignOutPart({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEDF7F8),
          border: Border(
              top: BorderSide(
                  color: Colors.grey.withOpacity(0.5), width: 1))),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
                child: Text(
              "Sign Out",
              style:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
          ),
          IconButton(
            onPressed: () {}, //! We have to put here sign out operation
            icon: const Icon(Icons.power_settings_new, color: Colors.red,),
          ),
        ],
      ),
    );
  }
}
