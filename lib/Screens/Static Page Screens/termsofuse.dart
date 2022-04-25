
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/staticpage_styles.dart';

class TermsOfUse extends StatefulWidget {
  @override
  _TermsOfUseState createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: ListView(children: <Widget>[
        SizedBox(
          height: height * 0.09,
        ),
        Container(
          width: width * 0.07,
          height: height * 0.07,
          child: Image.asset(
            'assets/images/HomeTeach Logo.png',
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Container(
          width: width,
          height: height * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  terms,
                  style: textstyle1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.00,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This is the HomeTeach Terms of',
                      style: textstyle4,
                    ),
                    SizedBox(height: height * 0.004),
                    Text(
                      'Use.',
                      style: textstyle4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          width: width,
          height: height * 0.062,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.00),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(210, 73, 47, 1),
                onPrimary: secondaryColor,
                //shadowColor: tertiaryColor2,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize:
                    Size(width * 0.75, height * 0.062), //////// HERE
              ),
              onPressed: (){Navigator.pop(context);},
              child: Text(
                goback,
                style: textstyle2,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
