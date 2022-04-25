import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputTxt extends StatelessWidget {
  const InputTxt({
    Key? key,
    required this.width,
    required this.height,
    required this.input1,
    required this.inputstyle,
    required this.controllername,
    required this.boolvalue,
  }) : super(key: key);

  final double width;
  final double height;
  final String input1;
  final TextStyle inputstyle;
  final TextEditingController controllername;
  final bool boolvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.86,
      height: height * 0.055,
      child: TextField(
        controller: controllername,
        obscureText: boolvalue,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 0,
          ),
          hintText: input1,
          hintStyle: inputstyle,
        ),
      ),
    );
  }
}