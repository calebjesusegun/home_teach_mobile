import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class TeacgerPayment extends StatefulWidget {
  const TeacgerPayment({Key? key}) : super(key: key);

  @override
  _TeacgerPaymentState createState() => _TeacgerPaymentState();
}

class _TeacgerPaymentState extends State<TeacgerPayment> {
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
                        'John Doe',
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
                        'Teacher',
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF3E8A23)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Account Name',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'John Doerime',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Account Number',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                '0011223344',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Bank Name',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'HomeTeach Bank',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Paymentpage(text: 'ADD ANOTHER ACCOUNT'),
              const SizedBox(
                height: 165,
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
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
