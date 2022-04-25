import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Models/studentsubjectmenu.dart';

PopupMenuItem<StudentMenu> nurserybuid(StudentMenu nurseryList) =>
    PopupMenuItem(
        value: nurseryList,
        child: Row(
          children: [
            Text(
              nurseryList.text,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              nurseryList.icon,
              color: Colors.green,
            ),
          ],
        ));

PopupMenuItem<StudentMenu> primarybuild(StudentMenu primaryList) =>
    PopupMenuItem(
        value: primaryList,
        child: Row(
          children: [
            Text(
              primaryList.text,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              primaryList.icon,
              color: Colors.green,
            ),
          ],
        ));

// ignore: non_constant_identifier_names
PopupMenuItem<StudentMenu> juniorbuild(StudentMenu JuniorSecondaryList) =>
    PopupMenuItem(
        value: JuniorSecondaryList,
        child: Row(
          children: [
            Text(
              JuniorSecondaryList.text,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              JuniorSecondaryList.icon,
              color: Colors.green,
            )
          ],
        ));
// ignore: non_constant_identifier_names
PopupMenuItem<StudentMenu> seniorscience(StudentMenu SenSecScienceList) =>
    PopupMenuItem(
      value: SenSecScienceList,
      child: Row(
        children: [
          Text(
            SenSecScienceList.text,
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            SenSecScienceList.icon,
            color: Colors.green,
          ),
        ],
      ),
    );

// ignore: non_constant_identifier_names
PopupMenuItem<StudentMenu> seniorart(StudentMenu SenSecArtList) =>
    PopupMenuItem(
      value: SenSecArtList,
      child: Row(
        children: [
          Text(
            SenSecArtList.text,
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            SenSecArtList.icon,
            color: Colors.green,
          ),
        ],
      ),
    );
