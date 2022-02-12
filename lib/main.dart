import 'package:cay_platform/model/trainings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(MultiProvider(
    providers: [Provider(create: (_) => Trainings())],
    child: const MyApp(),
  ));
}
