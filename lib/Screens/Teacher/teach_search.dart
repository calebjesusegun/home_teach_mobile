import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Reusable%20Widgets/reusableWidget.dart';

class TeachSearch extends StatelessWidget {
  const TeachSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 25,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          leadingWidth: 25,
          title: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.help_outline,
                size: 25,
              ),
              color: Colors.black,
              onPressed: () {
                //HELP BUTTON FUNCTION
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SearchBox(),
              Expanded(
                child: SizedBox(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 45,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'SEARCH',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
