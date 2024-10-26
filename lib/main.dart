import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

void main() {
  runApp(Center(
    child: Text(
      "Hola flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: CSSColors.lightBlue, // Color rosa
      ),
    ),
  ));
}
