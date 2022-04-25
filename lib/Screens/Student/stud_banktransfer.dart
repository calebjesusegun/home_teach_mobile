import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_teach_mobile/Constant/stud_banktransfer_styles.dart';


class StudentBankTransfer extends StatefulWidget {
  @override
  _StudentBankTransferState createState() => _StudentBankTransferState();
}

class _StudentBankTransferState extends State<StudentBankTransfer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: ListView(children: <Widget>[
        Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/paymentgreen.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 30.00),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: width * 0.04,
                        height: height * 0.08,
                        child: IconButton(
                          mouseCursor: SystemMouseCursors.click,
                          padding: EdgeInsets.only(right: 0.0),
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_back,
                            color: secondaryColor,
                          ),
                          color: secondaryColor,
                        ),
                      ),
                      TextButton(
                        onPressed: (){Navigator.pop(context);},
                        child: Text(
                          back,
                          style: textstyle9,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * .12,
                  left: width * .07,
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.green,
                    color: Colors.white.withOpacity(0.9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      height: height * .26,
                      width: width * .85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: height * 0.07),
                              Text(name, style: textstyle1),
                              Text(
                                student,
                                style: textstyle2,
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.048),
                          Text(
                            banktransfer,
                            style: textstyle3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Circle Avatar
                Positioned(
                  top: height * .07,
                  right: width * .37,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ),

                Positioned(
                  top: height * .29,
                  left: width * .087,
                  //right: width * .065,
                  child: Container(
                    height: height * 0.64,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: height * .15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              accountdetails,
                              style: textstyle4,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  account,
                                  style: textstyle5,
                                ),
                                Text(
                                  hometeach,
                                  style: textstyle6,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  accountnumber,
                                  style: textstyle5,
                                ),
                                Text(
                                  accountnumber1,
                                  style: textstyle6,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  bankname,
                                  style: textstyle5,
                                ),
                                Text(
                                  bankname1,
                                  style: textstyle6,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * .03,
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: height * .73,
                  //left: width * .001,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            shortdetails,
                            style: textstyle7,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: height * 0.03,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(62, 138, 35, 1.0),
                            onPrimary: secondaryColor,
                            shadowColor: tertiaryColor2,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: Size(
                                width * 0.82, height * 0.062), //////// HERE
                          ),
                          onPressed: () {},
                          child: Text(
                            upload,
                            style: textstyle8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
