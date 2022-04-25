import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/constant.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class AccountCreatedTeacher extends StatefulWidget {
  const AccountCreatedTeacher({Key? key}) : super(key: key);

  @override
  _AccountCreatedTeacherState createState() => _AccountCreatedTeacherState();
}

class _AccountCreatedTeacherState extends State<AccountCreatedTeacher> {
  @override
  Widget build(BuildContext context) {
    var kTextForget2 = kTextForget;
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Back',
                    style: kStyle,
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Icon(
                    Icons.contact_support_outlined,
                    color: Colors.black,
                    size: 32.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: kTextAccount),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/thumbs-up.png',
              width: 400,
              height: 300,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: kTextForget2,
              ),
            ),
            InkWell(
              onTap: (){Navigator.pushReplacementNamed(context, 'teacherhomepage');},
              child: kContainer(text: 'GET STARTED'),),
          ],
        ),
      ),
    );
  }
}
