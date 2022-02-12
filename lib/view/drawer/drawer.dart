import 'package:cay_platform/view/drawer/widgets/menu_item.dart';
import 'package:cay_platform/view/drawer/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:const [
          DrawerUserInfo(),
          CustomMenuItem(icon: Icons.account_circle, text: "My Account"),
          CustomMenuItem(icon: Icons.settings, text: "Settings"),
        ],
      ),
    );
  }


  

  
}
