import 'package:flutter/material.dart';

import 'app_theme.dart';

InputDecoration textFormFieldDecoration(
    {Widget? prefixIcon,
    double? borderRadius = 30,
    String? hint,
    String? label,
    required BuildContext context}) {
  AppThemeStyle appThemeStyle = AppThemeStyle();
  BorderSide borderSide = BorderSide(color: AppThemeStyle().tColor);
  BorderRadius borderRadius = BorderRadius.circular(30);
  return InputDecoration(
    //focusColor: const Color.fromRGBO(40, 157, 210, 1),

    //add prefix icon
    prefixIcon: prefixIcon,

    suffixStyle: Theme.of(context).textTheme.caption,

    contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
    border: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),

    enabledBorder: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
    fillColor: appThemeStyle.tColor,
    disabledBorder: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: borderRadius,
    ),
    hintText: hint,
    errorStyle: Theme.of(context).textTheme.caption!.copyWith(
          color: Colors.red,
        ),
    errorMaxLines: 2,

//make hint text
    hintStyle: Theme.of(context)
        .textTheme
        .bodyText2!
        .copyWith(color: appThemeStyle.tColor),

//create lable
    labelText: label,
//lable style
    labelStyle: Theme.of(context)
        .textTheme
        .bodyText2!
        .copyWith(color: appThemeStyle.tColor),
  );
}
