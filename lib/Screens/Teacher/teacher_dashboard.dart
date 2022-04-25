import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.07,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/bgHome.jpg'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * .16,
                    width: width,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: hi,
                                          style: textblack25,
                                          children: [
                                            TextSpan(
                                                text: teacherName,
                                                style:  textblack25.copyWith(fontWeight: FontWeight.w700))
                                          ],
                                        ),
                                      ),
                                      Text(
                                        teacherHeaderTxt,
                                        style: textblack14,
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: primaryColor,
                                    backgroundImage:
                                        AssetImage('assets/images/dp.png'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            SearchBox()
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: height * .25,
                    width: width,
                    child: Column(
                      children: [
                        ContentHeader(contentText: subjects),
                        ContentContainer2(
                          asset1: 'subject1',
                          asset2: 'subject2',
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: height * .25,
                    width: width,
                    child: Column(
                      children: [
                        ContentHeader(contentText: schedule),
                        SizedBox(height: 10),
                        ContentContainer(
                          asset: 'schedule',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  BookingRequestCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

