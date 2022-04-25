import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/lesson_address_styles.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.asset1,
    required this.title,
    required this.callback,
  }) : super(key: key);

  final double width;
  final double height;
  final String asset1;
  final String title;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .145,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/$asset1.png',
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          25.00,
          10.00,
          25.00,
          0.00,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: width * 0.06,
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
                      onPressed: callback,
                      child: Text(
                        back,
                        style: textstyle3,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    CupertinoIcons.question_circle,
                    color: secondaryColor,
                  ),
                  onPressed: null,
                  mouseCursor: SystemMouseCursors.click,
                ),
              ],
            ),
            SizedBox(height: 10.00),
            Center(
              child: Text(
                title,
                style: textstyle4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
