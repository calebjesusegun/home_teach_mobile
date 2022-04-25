import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/lesson_address_styles.dart';

class PageButton extends StatelessWidget {
  const PageButton({
    Key? key,
    required this.width,
    required this.height,
    required this.btncolor,
    required this.inputtxt,
    required this.callback
  }) : super(key: key);

  final double width;
  final double height;
  final Color btncolor;
  final String inputtxt;
  final Function()? callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: btncolor,
        onPrimary: secondaryColor,
        shadowColor: tertiaryColor2,
        elevation: 1,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)),
        minimumSize: Size(
            width * 0.86,
            height * 0.062), //////// HERE
      ),
      onPressed: callback,
      child: Text(
        inputtxt,
        style: textstyle4,
      ),
    );
  }
}

