import 'package:flutter/material.dart';

import 'custom_profile_picture.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEDF7F8),
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: CustomProfilePicture(height: 50, width: 50),
          ),
        ],
      ),
    );
  }
}
