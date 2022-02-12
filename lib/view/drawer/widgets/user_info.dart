import 'package:flutter/material.dart';

import '../../../widgets/widget.dart';

class DrawerUserInfo extends StatelessWidget {
  const DrawerUserInfo({Key? key}) : super(key: key);

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
                child: CustomProfilePicture(
                  height: 90,
                  width: 90,
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child:const Text(
                        "Christina Pristine", //! We have to take these information from to database
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 2,),
                    Container(
                      width: MediaQuery.of(context).size.width/2,                      
                      child:const Text(
                        "christinapristine@gmail.com", //! We have to take these information from to database
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
