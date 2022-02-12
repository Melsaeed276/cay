import 'package:cay_platform/core/constants/custom_profile_picture.dart';
import 'package:flutter/material.dart';

class DrawerUserInfo extends StatelessWidget {
  const DrawerUserInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomProfilePicture(height: 70, width: 70,),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Christina Pristine", //! We have to take these information from to database
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "christinapristine@gmail.com", //! We have to take these information from to database
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}