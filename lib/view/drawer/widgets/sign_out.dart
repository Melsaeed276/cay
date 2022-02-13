import 'package:cay_platform/services/auth_service/auth_service.dart';
import 'package:cay_platform/view/authentication_view/authentication_view.dart';
import 'package:flutter/material.dart';

import '../../../widgets/page_route.dart';

class SignOutPart extends StatelessWidget {
  SignOutPart({
    Key? key,
  }) : super(key: key);
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFEDF7F8),
          border: Border(
              top: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1))),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
                child: Text(
              "Sign Out",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
          ),
          IconButton(
            onPressed: () async {
              var isOut = await _authService.signOut(context);
              if (isOut == true) {
                Navigator.of(context).pushReplacement(PageRouteManager(
                    const SignInPage(), const Offset(1.0, 0.0)));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('There is a problem')),
                );
              }
            }, //! We have to put here sign out operation
            icon: const Icon(
              Icons.power_settings_new,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
