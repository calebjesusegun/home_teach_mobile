//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:home_teach_mobile/Authentication/auth.dart';
import 'package:home_teach_mobile/Constant/signin_styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/page_button.dart';
import 'package:home_teach_mobile/Screens/Admin/admin_sign_in.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/aboutpage.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/contactus.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/privacypolicy.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/termsofuse.dart';
import 'package:home_teach_mobile/Screens/Student/signup_student.dart';
import 'package:home_teach_mobile/Screens/Student/stud_homepage.dart';

class StudentSignIn extends StatefulWidget {
  @override
  _StudentSignInState createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  //int selectedValue = 2;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //Auth auth = Auth();
  bool loading = false;

  final allChecked = CheckBoxModal(title: "Remember me");
  bool select = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: width,
              height: height * .28,
              decoration: BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/Group4.png',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  25.00,
                  5.00,
                  25.00,
                  30.00,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100.0,
                      ),
                      child: Container(
                        width: width * 0.35,
                        height: height * 0.1,
                        child: Image.asset(
                          'assets/images/HomeTeach Logo2.png',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 60.0,
                        bottom: 100.00,
                      ),
                      child: PopupMenuButton<int>(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text(
                                      'Administrator',
                                      style: select
                                          ? TextStyle(
                                              color: Color.fromRGBO(
                                                  210, 73, 47, 1),
                                            )
                                          : null,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AdminSignIn(),
                                        ),
                                      );
                                    },
                                  ),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text(
                                      'About',
                                      style: select
                                          ? TextStyle(
                                              color: Color.fromRGBO(
                                                  210, 73, 47, 1),
                                            )
                                          : null,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AboutUs(),
                                        ),
                                      );
                                    },
                                  ),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text('Contact Us'),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ContactUs(),
                                        ),
                                      );
                                    },
                                  ),
                                  value: 3,
                                ),
                                PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text(
                                      'Privacy Policy',
                                      style: select
                                          ? TextStyle(
                                              color: Color.fromRGBO(
                                                  210, 73, 47, 1),
                                            )
                                          : null,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PrivacyPolicy(),
                                        ),
                                      );
                                    },
                                  ),
                                  value: 4,
                                ),
                                PopupMenuItem(
                                  child: GestureDetector(
                                    child: Text(
                                      'Terms of Use',
                                      style: select
                                          ? TextStyle(
                                              color: Color.fromRGBO(
                                                  210, 73, 47, 1),
                                            )
                                          : null,
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TermsOfUse(),
                                        ),
                                      );
                                    },
                                  ),
                                  value: 5,
                                ),
                              ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.065,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  Text(
                    welcome,
                    style: textstyle1,
                  ),
                  Text(
                    signincontinue,
                    style: textstyle2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.00),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: height * 0.055,
                      child: TextField(
                        controller: emailController,
                        autofocus: false,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            CupertinoIcons.mail,
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
                            horizontal: 10,
                            vertical: 0,
                          ),
                          hintText: email,
                          hintStyle: textstyle4,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: height * 0.055,
                            child: TextField(
                              controller: passwordController,
                              autofocus: false,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(
                                  CupertinoIcons.padlock,
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
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                                hintText: password,
                                hintStyle: textstyle5,
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          Row(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Transform.scale(
                                    scale: 0.75,
                                    child: Checkbox(
                                      activeColor:
                                          Color.fromRGBO(210, 73, 47, 1),
                                      checkColor: Colors.white,
                                      value: allChecked.value,
                                      onChanged: (value) {
                                        setState(() {
                                          allChecked.value = !allChecked.value;
                                        });
                                      },
                                    ),
                                  ),
                                  Text(
                                    rememberme,
                                    style: textstyle8,
                                  ),
                                ],
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: (){Navigator.pushReplacementNamed(context, '/resetpassword');},
                                child: Text(
                                  forgotpassword,
                                  style: textstyle3,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.03),
                          PageButton(
                            btncolor: primaryColor,
                            width: width,
                            height: height,
                            inputtxt: login,
                            callback: () async {
                              // await auth.signIn(
                              //     email: emailController.text,
                              //     password: passwordController.text);
                              
                              Navigator.pushReplacementNamed(context, '/accountCreated');
                            },
                          ),
                          SizedBox(height: height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                noaccount,
                                style: textstyle6,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, '/studentsignup');
                                },
                                child: Text(
                                  signup,
                                  style: textstyle7,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({this.title = "", this.value = false});
}
