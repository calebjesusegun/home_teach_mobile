import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/static_json_data.dart';
import 'package:home_teach_mobile/Constant/teacher_schedule_styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/top_container.dart';

class TeacherSchedule extends StatefulWidget {
  const TeacherSchedule({Key? key}) : super(key: key);
  @override
  _TeacherScheduleState createState() => _TeacherScheduleState();
}

class _TeacherScheduleState extends State<TeacherSchedule> {
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
                title: schedule,
                callback: (){Navigator.pop(context);}),
            BodyContainer(height: height, width: width),
          ],
        ),
      ),
    );
  }
}

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.84,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.00, right: 15.00, bottom: 5.00, top: 15.00),
        child: ListView.builder(
          itemCount: scheduleList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              onTap: null,
              leading: Image.asset(scheduleList[index]['avatar']),
              title: PrimaryText(text: scheduleList[index]['name']),
              subtitle: Row(
                children: [
                  PrimaryText(
                    text: scheduleList[index]['date'],
                    size: 14,
                    color: Color.fromRGBO(210, 73, 47, 1.0),
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  PrimaryText(text: scheduleList[index]['time'], size: 14.00, fontWeight: FontWeight.w600,),
                ],
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}