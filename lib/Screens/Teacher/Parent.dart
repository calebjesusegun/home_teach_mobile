import 'package:flutter/material.dart';

// ignore: camel_case_types
class signUp_Student_Parent extends StatefulWidget {
  const signUp_Student_Parent({Key? key}) : super(key: key);

  @override
  _signUp_Student_ParentState createState() => _signUp_Student_ParentState();
}

// ignore: camel_case_types
class _signUp_Student_ParentState extends State<signUp_Student_Parent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(MediaQuery.of(context).size.width, 150.0),
          ),
        ),
        child: Image.asset(
          'assets/images/HomeTeachLogo.png',
          width: 60,
          height: 40,
        ),
      ),
    );
  }
}
