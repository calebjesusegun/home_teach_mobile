import 'package:flutter/material.dart';

Color get primaryColor => Color.fromRGBO(37, 102, 19, 1.0);
Color get secondaryColor => Colors.white;
Color get tertiaryColor1 => Colors.black.withOpacity(0.3);
Color get tertiaryColor2 => Colors.greenAccent;
Color get tertiaryColor3 => Colors.grey;

TextStyle get textstyle2 => TextStyle(
          color: Color.fromRGBO(210,73,47, 1.0),
          fontSize: 14.00,
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
        );

String get name1 => 'Caleb John';

String get back => 'Back';
TextStyle get textstyle3 => TextStyle(
        color: Colors.white,
        backgroundColor: Colors.transparent,
        fontWeight: FontWeight.w500,
        fontSize: 18.00,
        fontFamily: 'Montserrat',
      );

String get schedule => 'Schedule (Physical)';
TextStyle get textstyle4 => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 19.50,
      );

class PrimaryText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final TextOverflow overflow;

  const PrimaryText({
    this.text: '',
    this.color: Colors.black,
    this.fontWeight: FontWeight.w700,
    this.size: 19.5,
    this.overflow: TextOverflow.visible,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Montserrat',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  const Avatar({
    this.imagePath: '',
    this.width: 60,
    this.height: 60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}