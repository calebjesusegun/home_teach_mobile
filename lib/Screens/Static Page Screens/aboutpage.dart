import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/staticpage_styles.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                  about,
                  style: textstyle1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.00,),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Education',
                              style: textstyle4,
                            ),
                            Text(
                              'in',
                              style: textstyle4,
                            ),
                            Text(
                              'Nigeria',
                              style: textstyle4,
                            ),
                            Text(
                              'and',
                              style: textstyle4,
                            ),
                            Text(
                              'Africa',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'at',
                              style: textstyle4,
                            ),
                            Text(
                              'large',
                              style: textstyle4,
                            ),
                            Text(
                              'is',
                              style: textstyle4,
                            ),
                            Text(
                              'poor',
                              style: textstyle4,
                            ),
                            Text(
                              'compared',
                              style: textstyle4,
                            ),
                            Text(
                              'to',
                              style: textstyle4,
                            ),
                            Text(
                              'the',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'rest',
                              style: textstyle4,
                            ),
                            Text(
                              'of',
                              style: textstyle4,
                            ),
                            Text(
                              'the',
                              style: textstyle4,
                            ),
                            Text(
                              'world.',
                              style: textstyle4,
                            ),
                            Text(
                              'The',
                              style: textstyle4,
                            ),
                            Text(
                              'lack',
                              style: textstyle4,
                            ),
                            Text(
                              'of',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'access',
                              style: textstyle4,
                            ),
                            Text(
                              'to',
                              style: textstyle4,
                            ),
                            Text(
                              'quality',
                              style: textstyle4,
                            ),
                            Text(
                              'infrastructure,',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'lecturers,',
                              style: textstyle4,
                            ),
                            Text(
                              'materials',
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
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'inadequacies',
                              style: textstyle4,
                            ),
                            Text(
                              'that',
                              style: textstyle4,
                            ),
                            Text(
                              'follow',
                              style: textstyle4,
                            ),
                            Text(
                              'the',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'traditional',
                              style: textstyle4,
                            ),
                            Text(
                              'approach',
                              style: textstyle4,
                            ),
                            Text(
                              'of',
                              style: textstyle4,
                            ),
                            Text(
                              'pure',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'classroom',
                              style: textstyle4,
                            ),
                            Text(
                              'learning',
                              style: textstyle4,
                            ),
                            Text(
                              'has',
                              style: textstyle4,
                            ),
                            Text(
                              'caused',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'a',
                              style: textstyle4,
                            ),
                            Text(
                              'huge',
                              style: textstyle4,
                            ),
                            Text(
                              'barrier',
                              style: textstyle4,
                            ),
                            Text(
                              'in',
                              style: textstyle4,
                            ),
                            Text(
                              'education.',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
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
                              'The',
                              style: textstyle4,
                            ),
                            Text(
                              'objective',
                              style: textstyle4,
                            ),
                            Text(
                              'of',
                              style: textstyle4,
                            ),
                            Text(
                              'HomeTeach',
                              style: textstyle4,
                            ),
                            Text(
                              'is',
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
                              'bridge',
                              style: textstyle4,
                            ),
                            Text(
                              'these',
                              style: textstyle4,
                            ),
                            Text(
                              'inadequacies',
                              style: textstyle4,
                            ),
                            Text(
                              'by',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'providing',
                              style: textstyle4,
                            ),
                            Text(
                              'a',
                              style: textstyle4,
                            ),
                            Text(
                              'platform',
                              style: textstyle4,
                            ),
                            Text(
                              'for',
                              style: textstyle4,
                            ),
                            Text(
                              'students',
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
                              'lecturers',
                              style: textstyle4,
                            ),
                            Text(
                              'to',
                              style: textstyle4,
                            ),
                            Text(
                              'connect',
                              style: textstyle4,
                            ),
                            Text(
                              'with',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'each other.',
                              style: textstyle4,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.004),
                      ],
                    ),
                    Text(
                      ' \n \n',
                      style: textstyle4,
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
          height: height * 0.15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.00),
            child: Column(
              children: <Widget>[
                Text(
                  app,
                  style: textstyle3,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                ElevatedButton(
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
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
