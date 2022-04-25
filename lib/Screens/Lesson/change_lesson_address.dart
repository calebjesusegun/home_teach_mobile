import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/lesson_address_styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/input_txt.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/page_button.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/top_container.dart';

class ChangeLessonAddress extends StatefulWidget {
  const ChangeLessonAddress({Key? key}) : super(key: key);
  @override
  _ChangeLessonAddressState createState() => _ChangeLessonAddressState();
}

class _ChangeLessonAddressState extends State<ChangeLessonAddress> {
  
  TextEditingController addressController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            TopContainer(
                width: width,
                height: height,
                asset1: 'Group 5',
                title: changeaddress,
                callback: (){Navigator.pop(context);},),
            SizedBox(
              width: width,
              height: height * .84,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.00),
                child: Column(
                  children: <Widget>[
                    InputTxt(
                      width: width,
                      height: height,
                      input1: address,
                      inputstyle: textstyle1,
                      boolvalue: false,
                      controllername: addressController,
                    ),
                    SizedBox(
                      height: 50.00,
                    ),
                    PageButton(
                      width: width,
                      height: height,
                      btncolor: primaryColor,
                      inputtxt: save,
                      callback: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}