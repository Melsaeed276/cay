import 'package:flutter/material.dart';

import 'services/auth_service/auth_service.dart';
import 'theme/text_theme.dart';
import 'view/view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cay Platform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextThemeStyle().textTheme(false),
      ),
      home: AuthService().getUser() == null
          ? const SignInPage()
          : const MyHomePage(),
      // I hope it will work
    );
  }
}
