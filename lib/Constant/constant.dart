import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kpadding = EdgeInsets.all(16.0);
const kStyle =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
const kTextstyle = TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
const ksymatric = EdgeInsets.symmetric(vertical: 20, horizontal: 30);
const konly = EdgeInsets.symmetric(horizontal: 30, vertical: 8);
const kText =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);
const kTstyle = TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
const kPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 4);
const kImage = Center(
  child: Image(
    image: AssetImage('assets/images/HomeTeachLogo.png'),
    width: 200,
    height: 200,
  ),
);
const ktext = Center(
  child: Text(
    'Terms of Use',
    style: TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
  ),
);
const ktext2 = Center(
  child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      'This is the HomeTeach Terms of Use',
      style: TextStyle(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
    ),
  ),
);
const kRcontainerText = Text(
  'REJECT',
  style:
      TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
);
const kAcontainerText = Text(
  'ACCEPT',
  style:
      TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
);
const kTextForget = Text(
  "Don't forget that you can edit your personal information and preferences by tapping the setting icon",
  style: TextStyle(fontSize: 20, color: Colors.black),
);
const kTextAccount = Text(
  'Account Successfully Created',
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 20,
  ),
);
