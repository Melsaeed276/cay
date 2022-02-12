import 'package:cay_platform/view/drawer/widgets/menu_item.dart';
import 'package:cay_platform/view/drawer/widgets/sign_out.dart';
import 'package:cay_platform/view/drawer/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                DrawerUserInfo(),
                CustomMenuItem(icon: Icons.account_circle, text: "My Account"),
                CustomMenuItem(icon: Icons.settings, text: "Settings"),
                CustomMenuItem(icon: Icons.dashboard_outlined, text: "Dashboard"),
                CustomMenuItem(icon: Icons.person_pin_circle_outlined, text:  "Mentors"),
                CustomMenuItem(icon: Icons.badge_outlined, text: "Companies"),
                CustomMenuItem(icon: Icons.info_outline, text: "About"),
              ],
            ),
            const SignOutPart()
          ],
        ),
      ),
    );
  }
}

