import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:home_teach_mobile/Constant/constant.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class RestPassword extends StatefulWidget {
  const RestPassword({Key? key}) : super(key: key);

  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: kpadding,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 2),
                    child: Text(
                      'Back',
                      style: kStyle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 240,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Image.asset(
                      'assets/images/question-circle.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                'assets/images/icons.png',
                height: 100,
                width: 50,
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 21),
                child: Text(
                  'Enter the email asscotiated with your account and we will send you an email with a password reset link',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                qContainer(
                  text: 'Email',
                  icon: Icon(Icons.email),
                ),
                kContainer(text: 'RESET PASSWORD')
              ],
            )
          ],
        ),
      ),
    );
  }
}
