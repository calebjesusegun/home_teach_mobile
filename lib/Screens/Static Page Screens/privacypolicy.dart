import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/staticpage_styles.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: ListView(children: <Widget>[
        SizedBox(
          height: height * 0.09,
        ),
        Container(
          width: width * 0.07,
          height: height * 0.07,
          child: Image.asset(
            'assets/images/HomeTeach Logo.png',
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Container(
          width: width,
          height: height * 0.58,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  privacy,
                  style: textstyle1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.00,
                ),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HomeTeach',
                              style: textstyle5,
                            ),
                            Text(
                              'collects',
                              style: textstyle4,
                            ),
                            Text(
                              'your',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'location',
                              style: textstyle4,
                            ),
                            Text(
                              'data',
                              style: textstyle4,
                            ),
                            Text(
                              'and',
                              style: textstyle4,
                            ),
                            Text(
                              'other',
                              style: textstyle4,
                            ),
                            Text(
                              'personal',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'information',
                              style: textstyle4,
                            ),
                            Text(
                              'you',
                              style: textstyle4,
                            ),
                            Text(
                              'provide',
                              style: textstyle4,
                            ),
                            Text(
                              'to',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HomeTeach,',
                              style: textstyle4,
                            ),
                            Text(
                              'such',
                              style: textstyle4,
                            ),
                            Text(
                              'as',
                              style: textstyle4,
                            ),
                            Text(
                              'your',
                              style: textstyle4,
                            ),
                            Text(
                              'name,',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'email',
                              style: textstyle4,
                            ),
                            Text(
                              'address',
                              style: textstyle4,
                            ),
                            Text(
                              'and',
                              style: textstyle4,
                            ),
                            Text(
                              'phone',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Text(
                          'number.',
                          style: textstyle4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HomeTeach',
                              style: textstyle4,
                            ),
                            Text(
                              'shares',
                              style: textstyle4,
                            ),
                            Text(
                              'your',
                              style: textstyle4,
                            ),
                            Text(
                              'location',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'and',
                              style: textstyle4,
                            ),
                            Text(
                              'other',
                              style: textstyle4,
                            ),
                            Text(
                              'personal',
                              style: textstyle4,
                            ),
                            Text(
                              'information',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'to',
                              style: textstyle4,
                            ),
                            Text(
                              'other',
                              style: textstyle4,
                            ),
                            Text(
                              'users',
                              style: textstyle4,
                            ),
                            Text(
                              'on',
                              style: textstyle4,
                            ),
                            Text(
                              'the',
                              style: textstyle4,
                            ),
                            Text(
                              'platform',
                              style: textstyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'For',
                              style: textstyle4,
                            ),
                            Text(
                              'more',
                              style: textstyle4,
                            ),
                            Text(
                              'information,',
                              style: textstyle4,
                            ),
                            Text(
                              'see',
                              style: textstyle4,
                            ),
                            Text(
                              'the',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        InkWell(
                          child: Text(
                            'Terms of use',
                            style: textstyle6,
                          ),
                          onTap: (){},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.012,
        ),
        Container(
          width: width,
          height: height * 0.062,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.00),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(210, 73, 47, 1),
                onPrimary: secondaryColor,
                //shadowColor: tertiaryColor2,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize:
                    Size(width * 0.75, height * 0.062), //////// HERE
              ),
              onPressed: (){Navigator.pop(context);},
              child: Text(
                goback,
                style: textstyle2,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
