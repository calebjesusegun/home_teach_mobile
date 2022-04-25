import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_teach_mobile/Constant/constant.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class StudentPayment extends StatefulWidget {
  const StudentPayment({Key? key}) : super(key: key);

  @override
  _StudentPaymentState createState() => _StudentPaymentState();
}

class _StudentPaymentState extends State<StudentPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/PAYMENTGREEN.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.longArrowAltLeft,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.1,
                          ),
                        ]),
                    constraints: BoxConstraints(maxHeight: 200, maxWidth: 330),
                  ),
                  Positioned(
                      top: -60,
                      left: 100,
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/dp.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      )),
                  const SizedBox(height: 80),
                  Positioned(
                      top: 80,
                      left: 70,
                      right: 50,
                      child: Text(
                        'Tunji Chibuike',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      )),
                  Positioned(
                      top: 110,
                      left: 130,
                      right: 50,
                      child: Text(
                        'Student',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 160,
                      left: 30,
                      right: 30,
                      child: Text(
                        'Select a Payment Method',
                        style: TextStyle(
                            color: Color(0xFF3E8A23),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Status:',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Pending Payment',
                          style: TextStyle(
                              color: Color(0xFF3E8A23),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Number Work',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Mr.John',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text('N5000',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('English Language',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Mrs.Jane',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text('N7,500',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Social Studies',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Mr.Doerime',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text('N8000',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text('SUBTOTAL',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text('N20,000',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Paymentpage(text: 'BANK TRANSFER'),
              Paymentpage(text: 'PAY WITH PAYSTACKS'),
              Paymentpage(text: 'CTREATE A VIRTUAL CARD'),
              const SizedBox(
                height: 25,
              ),
              BottomNavigationBar(
                  backgroundColor: const Color(0xFF3E8A23),
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.home,
                        color: Colors.black,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.userCircle,
                        color: Colors.black,
                      ),
                      label: 'User',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          FontAwesomeIcons.bell,
                          color: Colors.black,
                        ),
                        label: 'Balls'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          FontAwesomeIcons.bars,
                          color: Colors.black,
                        ),
                        label: 'Bars,'),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
