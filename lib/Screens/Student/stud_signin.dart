import 'package:flutter/material.dart';

class StudentSignIn extends StatefulWidget {
  const StudentSignIn({Key? key}) : super(key: key);

  @override
  _StudentSignInState createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Ellipse.png'),
                ),
              ),
              // child: Image(
              //   image: AssetImage('assests/images/HomeTeachLogo.png'),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
