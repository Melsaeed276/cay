import 'package:flutter/material.dart';

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
      home: const SignInPage(),
    );
  }
}
