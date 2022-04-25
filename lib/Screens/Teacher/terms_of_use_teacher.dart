import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/constant.dart';

class TermsTeacher extends StatefulWidget {
  const TermsTeacher({Key? key}) : super(key: key);

  @override
  _TermsTeacherState createState() => _TermsTeacherState();
}

class _TermsTeacherState extends State<TermsTeacher> {
  var ktext3 = ktext;
  var ktext4 = ktext2;
  static const RcontainerText = kRcontainerText;
  static const AcontainerText = kAcontainerText;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kImage,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ktext3),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: ktext4),
            SizedBox(
              height: 270,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.redAccent),
                      child: Center(child: RcontainerText),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green),
                      child: Center(
                        child: AcontainerText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
