//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/signup_styles.dart';
//import 'package:home_teach_mobile/Authentication/auth.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/page_button.dart';
import 'package:home_teach_mobile/Screens/Admin/admin_sign_in.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/aboutpage.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/contactus.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/privacypolicy.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/termsofuse.dart';
import 'package:home_teach_mobile/Screens/Student/signup_student.dart';
import 'package:home_teach_mobile/Screens/Student/stud_homepage.dart';
import 'package:home_teach_mobile/Screens/Teacher/signup_teacher.dart';

class StudentSignUp extends StatefulWidget {
  @override
  _StudentSignUpState createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // Database database = Database();

  String? selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 'Parent/Student';
  }

  dynamic setSelectedRadio(String val) {
    setState(() {
      selectedRadio = val;
    });
  }

  bool loading = false;

  final allChecked = CheckBoxModal(title: "Teacher/Student");
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
              height: height * 0.03,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    createaccount,
                    style: textstyle1,
                  ),
                  Text(
                    newaccount,
                    style: textstyle2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    accounttype,
                    style: textstyle8,
                  ),
                  SizedBox(height: height * 0.008),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.grey,
                            value: 'Teacher',
                            groupValue: selectedRadio,
                            onChanged: (val) {
                              setSelectedRadio(
                                val.toString(),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TeacherSignUp(),
                                ),
                              );
                            },
                          ),
                          Text(
                            teacher,
                            style: textstyle7,
                          ),
                        ],
                      ),
                      SizedBox(width: width * .09,),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.grey,
                            value: 'Parent/Student',
                            groupValue: selectedRadio,
                            onChanged: (val) {
                              setSelectedRadio(
                                val.toString(),
                              );
                            },
                          ),
                          Text(
                            student,
                            style: textstyle7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.028,
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
                        controller: nameController,
                        autofocus: false,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            CupertinoIcons.profile_circled,
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
                          hintText: 'Name',
                          hintStyle: textstyle4,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
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
                    SizedBox(height: height * 0.015),
                    Container(
                      width: double.infinity,
                      height: height * 0.055,
                      child: TextField(
                        controller: numberController,
                        autofocus: false,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.phone,
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
                          hintText: 'Phone number',
                          hintStyle: textstyle4,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
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
                    Container(
                      width: double.infinity,
                      height: height * 0.055,
                      child: TextField(
                        controller: confirmPasswordController,
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
                          hintText: 'Confirm Password',
                          hintStyle: textstyle5,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    PageButton(
                      btncolor: primaryColor,
                      width: width,
                      height: height,
                      inputtxt: createbutton,
                      callback: () async {
                        // await auth.signIn(
                        //     email: emailController.text,
                        //     password: passwordController.text);
                        Navigator.pushReplacementNamed(context, '/studentsignin');
                      },
                    ),
                    SizedBox(height: height * 0.023),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          alreadyaccount,
                          style: textstyle6,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/studentsignin');
                          },
                          child: Text(
                            login,
                            style: textstyle7,
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
      ),
    );
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({this.title = "", this.value = false});
}
