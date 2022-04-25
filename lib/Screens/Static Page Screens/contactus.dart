import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/staticpage_styles.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: ListView(children: <Widget>[
        SizedBox(
          height: height * 0.06,
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
          height: height * 0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  contactus,
                  style: textstyle1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.00,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0.00,),
                          width: width * 0.12,
                          //height: height * 0.01,
                          child: IconButton(
                            icon: Icon(
                              CupertinoIcons.mail,
                              color: tertiaryColor3,
                            ),
                            onPressed: null,
                            mouseCursor: SystemMouseCursors.click,
                          ),
                        ),
                        Text('info@hometeach.com', style: textstyle8,),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0.00),
                          width: width * 0.12,
                          //height: height * 0.01,
                          child: IconButton(
                            padding: EdgeInsets.all(0.00),
                            icon: Icon(
                              CupertinoIcons.phone,
                              color: tertiaryColor3,
                            ),
                            onPressed: null,
                            mouseCursor: SystemMouseCursors.click,
                          ),
                        ),
                        Text('Phone number', style: textstyle8,),
                      ],
                    ),
                    SizedBox(
                height: height * 0.015,
              ),
                    Text('Send us a message', style: textstyle7, textAlign: TextAlign.start,),
                    SizedBox(
                height: height * 0.03,
              ),
                    Container(
                      width: width * 0.86,
                      height: height * 0.055,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 0,
                          ),
                          hintText: 'Name',
                          hintStyle: textstyle9,
                        ),
                      ),
                    ),
                    SizedBox(height: height * .015,),
                    Container(
                      width: width * 0.86,
                      height: height * 0.055,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 0,
                          ),
                          hintText: 'Email',
                          hintStyle: textstyle9,
                        ),
                      ),
                    ),
                    SizedBox(height: height * .015,),
                    Container(
                      width: width * 0.86,
                      height: height * 0.055,
                      child: TextField(
                        controller: numberController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 0,
                          ),
                          hintText: 'Phone number (optional)',
                          hintStyle: textstyle9,
                        ),
                      ),
                    ),
                    SizedBox(height: height * .012,),
                    Container(
                      width: width * 0.86,
                      height: height * 0.1,
                      child: TextField(maxLines: 1500,
                        controller: messageController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 10,
                          ),
                          hintText: 'Message',
                          hintStyle: textstyle9,
                        ),
                      ),
                    ),
                     SizedBox(height: height * .019,),
                    Center(
                      child: Container(
                        width: width * 0.55,
                        //height: height * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.00),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(62, 138, 35, 1,),
                              onPrimary: secondaryColor,
                              //shadowColor: tertiaryColor2,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              minimumSize: Size(width * 0.2, height * 0.062), //////// HERE
                            ),
                            onPressed: () {},
                            child: Text(
                              send,
                              style: textstyle10,
                            ),
                          ),
                        ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.008,
        ),
        Container(
          width: width,
          //height: height * 0.5,
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
                minimumSize: Size(width * 0.65, height * 0.062), //////// HERE
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
