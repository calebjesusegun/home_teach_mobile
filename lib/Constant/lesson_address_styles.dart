import 'package:flutter/material.dart';

Color get primaryColor => Color.fromRGBO(37, 102, 19, 1.0);
Color get secondaryColor => Colors.white;
Color get tertiaryColor1 => Colors.black.withOpacity(0.3);
Color get tertiaryColor2 => Colors.greenAccent;
Color get tertiaryColor3 => Colors.grey;

String get address => 'Enter Address';
TextStyle get textstyle1 => TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );

String get save => 'SAVE';
TextStyle get textstyle2 => TextStyle(
          color: Colors.white,
          fontSize: 18.00,
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
        );

String get back => 'Back';
TextStyle get textstyle3 => TextStyle(
        color: Colors.white,
        backgroundColor: Colors.transparent,
        fontWeight: FontWeight.w500,
        fontSize: 18.00,
        fontFamily: 'Montserrat',
      );

String get changeaddress => 'Change Lesson Address';
TextStyle get textstyle4 => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 19.50,
      );