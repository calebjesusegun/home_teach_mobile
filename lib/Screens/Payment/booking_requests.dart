import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/booking_requests_styles.dart';
import 'package:home_teach_mobile/Constant/static_json_data.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/top_container.dart';

class BookingRequest extends StatefulWidget {
  const BookingRequest({Key? key}) : super(key: key);
  @override
  _BookingRequestState createState() => _BookingRequestState();
}

class _BookingRequestState extends State<BookingRequest> {
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
                title: request,
                callback: (){Navigator.pop(context);},),
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
        padding: const EdgeInsets.only(left: 20.00, right: 20.00, bottom: 5.00, top: 15.00),
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              onTap: () {},
              leading: Image.asset(userList[index]['avatar']),
              title: PrimaryText(text: userList[index]['name']),
              subtitle: PrimaryText(
                text: userList[index]['class'],
                size: 14,
                color: Color.fromRGBO(210, 73, 47, 1.0),
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w600,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(onPressed: (){}, child: Image.asset(userList[index]['accept']),),
                  TextButton(onPressed: (){}, child: Image.asset(userList[index]['reject']),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}