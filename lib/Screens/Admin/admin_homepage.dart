import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/admin_homepage_style.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/page_button.dart';


class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30.00,  right: 30.00, top: 40.00, bottom: 0.00),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BodyContainer(width: width, height: height),
                SizedBox(height: height * 0.35),
                PageButton(
                  btncolor: secondaryColor,
                  width: width,
                  height: height,
                  inputtxt: logout,
                  callback: (){Navigator.pushReplacementNamed(context, '/adminsignin');},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  firstname,
                  style: textstyle7,
                ),
                Text(
                  lastname,
                  style: textstyle8,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: height * 0.055,
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(
                    CupertinoIcons.search,
                  ),
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 0,
                ),
                hintText: search,
                hintStyle: textstyle4,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      teacher,
                      style: textstyle2,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        viewall,
                        style: textstyle6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          total,
                          style: textstyle1,
                        ),
                        Text(
                          total1,
                          style: textstyle5,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          verified,
                          style: textstyle1,
                        ),
                        Text(
                          verified1,
                          style: textstyle5,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          unverified,
                          style: textstyle1,
                        ),
                        Text(
                          unverified1,
                          style: textstyle5,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      student,
                      style: textstyle2,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        viewall,
                        style: textstyle6,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          total,
                          style: textstyle1,
                        ),
                        Text(
                          total2,
                          style: textstyle5,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          paid,
                          style: textstyle1,
                        ),
                        Text(
                          paid1,
                          style: textstyle5,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          pending,
                          style: textstyle1,
                        ),
                        Text(
                          pending1,
                          style: textstyle5,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
