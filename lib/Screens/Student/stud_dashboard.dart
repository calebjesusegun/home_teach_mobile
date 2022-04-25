import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class StudDashboard extends StatelessWidget {
  const StudDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: SafeArea(
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
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * .15,
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
                                                        text: studentName,
                                                        style: textblack25
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700))
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                studHeaderTxt,
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
                                            backgroundImage: AssetImage(
                                                'assets/images/dp.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 25),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      height: 40,
                                      width: double.infinity,
                                      child: TextField(
                                        autofocus: false,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(
                                              CupertinoIcons.search,
                                            ),
                                            hintText: search,
                                            hintStyle: textblack16.copyWith(
                                                color: Colors.grey.shade400)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            height: height * .25,
                            width: width,
                            child: Column(
                              children: [
                                ContentHeader(contentText: mysubjects),
                                ContentContainer2(
                                  asset1: 'subject1',
                                  asset2: 'subject2',
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            height: height * .25,
                            width: width,
                            child: Column(
                              children: [
                                ContentHeader(contentText: schedule),
                                ContentContainer2(
                                  asset1: 'subject1',
                                  asset2: 'subject2',
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
                                ContentHeader(contentText: recommeded),
                                ContentContainer2(
                                  asset1: 'resubject1',
                                  asset2: 'resubject2',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
