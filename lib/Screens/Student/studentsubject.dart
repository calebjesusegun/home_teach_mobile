import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_teach_mobile/Models/studentmenuitems.dart';
import 'package:home_teach_mobile/Models/studentsubjectmenu.dart';

import 'constantsstudent.dart';

class StudentSubjects extends StatefulWidget {
  const StudentSubjects({Key? key}) : super(key: key);

  @override
  _StudentSubjectsState createState() => _StudentSubjectsState();
}

class _StudentSubjectsState extends State<StudentSubjects> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/interfacegreen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 55, right: 36, left: 36, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.longArrowAltLeft,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/question-circle.png',
                      height: 20,
                      width: 20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Select Subject',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nursery',
                      style: TextStyle(
                          color: Color(0xFFD2492F),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    PopupMenuButton<StudentMenu>(
                      icon: Icon(
                        FontAwesomeIcons.chevronDown,
                        color: Colors.black45,
                      ),
                      itemBuilder: (context) => [
                        ...NurseryMenuItems.nurseryList
                            .map(nurserybuid)
                            .toList(),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Primary',
                      style: TextStyle(
                          color: Color(0xFFD2492F),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    PopupMenuButton<StudentMenu>(
                        icon: Icon(
                          FontAwesomeIcons.chevronDown,
                          color: Colors.black45,
                        ),
                        itemBuilder: (context) => [
                              ...PrimaryMenuItems.primaryList
                                  .map(primarybuild)
                                  .toList(),
                            ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Junior Secondary',
                      style: TextStyle(
                          color: Color(0xFFD2492F),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    PopupMenuButton<StudentMenu>(
                        icon: Icon(
                          FontAwesomeIcons.chevronDown,
                          color: Colors.black45,
                        ),
                        itemBuilder: (context) => [
                              ...JuniorSecondaryItems.JuniorSecondaryList.map(
                                      juniorbuild)
                                  .toList(),
                            ])
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'SeniorSecondary',
                          style: TextStyle(
                              color: Color(0xFFD2492F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Science',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    PopupMenuButton<StudentMenu>(
                        icon: Icon(
                          FontAwesomeIcons.chevronDown,
                          color: Colors.black45,
                        ),
                        itemBuilder: (context) => [
                              ...SeniorSecondaryScienceItems.SenSecScienceList
                                      .map(seniorscience)
                                  .toList(),
                            ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'SeniorSecondary',
                          style: TextStyle(
                              color: Color(0xFFD2492F),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Arts',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    PopupMenuButton<StudentMenu>(
                        icon: Icon(
                          FontAwesomeIcons.chevronDown,
                          color: Colors.black45,
                        ),
                        itemBuilder: (context) => [
                              ...SeniorSecondaryArtsItems.SenSecArtsList.map(
                                      seniorart)
                                  .toList(),
                            ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
