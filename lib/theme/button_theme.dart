import 'package:flutter/material.dart';

ButtonStyle buttonStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    primary: Theme.of(context).primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    onPrimary: Theme.of(context).textTheme.headline5?.color, // foreground
  );
}
