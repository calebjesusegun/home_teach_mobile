import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Screens/Student/studentsubject.dart';

class TeachersSubjectSelected extends StatefulWidget {
  const TeachersSubjectSelected({Key? key}) : super(key: key);

  @override
  _TeachersSubjectSelectedState createState() =>
      _TeachersSubjectSelectedState();
}

class _TeachersSubjectSelectedState extends State<TeachersSubjectSelected> {
  @override
  Widget build(BuildContext context) {
    return StudentSubjects();
  }
}
