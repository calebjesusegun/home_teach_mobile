import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/admin_page_styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/curvy_navbar.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/input_txt.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/page_button.dart';

class AdminSignIn extends StatefulWidget {
  @override
  _AdminSignInState createState() => _AdminSignInState();
}

class _AdminSignInState extends State<AdminSignIn> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            NavbarTopContainer(
              width: width,
              height: height,
              asset1: 'Group2',
            ),
            Container(
              width: width,
              height: height * .62,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25.00, right: 25.00, top: 60.00, bottom: 80.00),
                child: Column(
                  children: <Widget>[
                    Text(
                      signin,
                      style: textstyle1,
                    ),
                    SizedBox(height: height * 0.08),
                    InputTxt(
                      width: width,
                      height: height,
                      input1: username,
                      inputstyle: textstyle5,
                      boolvalue: false,
                      controllername: emailController,
                    ),
                    SizedBox(height: height * 0.03),
                    InputTxt(
                      width: width,
                      height: height,
                      input1: accesskey,
                      inputstyle: textstyle5,
                      boolvalue: true,
                      controllername: passwordController,
                    ),
                    SizedBox(height: height * 0.065),
                    PageButton(
                      btncolor: primaryColor,
                      width: width,
                      height: height,
                      inputtxt: login,
                      callback: () {Navigator.pushReplacementNamed(context, '/adminhomepage');},
                    ),
                  ],
                ),
              ),
            ),
            FooterContainer(width: width, height: height),
          ],
        ),
      ),
    );
  }
}

class FooterContainer extends StatelessWidget {
  const FooterContainer({
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
      height: height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            notadmin,
            style: textstyle2,
          ),
          TextButton(
            onPressed: (){Navigator.pop(context);},
            child: Text(
              goback,
              style: textstyle3,
            ),
          ),
        ],
      ),
    );
  }
}
