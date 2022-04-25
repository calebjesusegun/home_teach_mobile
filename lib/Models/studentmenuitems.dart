import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_teach_mobile/Models/studentsubjectmenu.dart';

class NurseryMenuItems {
  static const List<StudentMenu> nurseryList = [
    Computer,
    CRS,
    creativeArt,
    Letter,
    Health,
    NumberWork
  ];

  static const Computer =
      StudentMenu(text: 'Number Work', icon: FontAwesomeIcons.checkCircle);
  static const CRS =
      StudentMenu(text: 'CRS', icon: FontAwesomeIcons.checkCircle);
  static const creativeArt =
      StudentMenu(text: 'Creative Art', icon: FontAwesomeIcons.circle);
  static const Letter =
      StudentMenu(text: 'Letter Work', icon: FontAwesomeIcons.circle);
  static const Health =
      StudentMenu(text: 'Story Stelling', icon: FontAwesomeIcons.checkCircle);
  static const NumberWork =
      StudentMenu(text: 'Number Work', icon: FontAwesomeIcons.circle);
}

class PrimaryMenuItems {
  static const List<StudentMenu> primaryList = [
    CRS,
    ComputerStudies,
    SocialStudies,
    PhysicalEducation,
    Maths
  ];

  static const CRS =
      StudentMenu(text: 'CRS', icon: FontAwesomeIcons.checkCircle);
  static const ComputerStudies =
      StudentMenu(text: 'Computer Studies', icon: FontAwesomeIcons.checkCircle);
  static const SocialStudies =
      StudentMenu(text: 'Social Studies', icon: FontAwesomeIcons.checkCircle);
  static const PhysicalEducation = StudentMenu(
      text: 'Physical Education', icon: FontAwesomeIcons.checkCircle);
  static const Maths =
      StudentMenu(text: "MATHS", icon: FontAwesomeIcons.checkCircle);
}

class JuniorSecondaryItems {
  static const List<StudentMenu> JuniorSecondaryList = [
    Maths,
    BasicScience,
    BasicTechnology,
    HomeEconomics,
    FineArt,
    CivicEducation
  ];

  static const Maths =
      StudentMenu(text: 'MATHS', icon: FontAwesomeIcons.checkCircle);
  static const BasicScience =
      StudentMenu(text: 'Basic Science', icon: FontAwesomeIcons.circle);
  static const BasicTechnology =
      StudentMenu(text: 'Basic Technology', icon: FontAwesomeIcons.checkCircle);
  static const HomeEconomics =
      StudentMenu(text: 'HomeEconomics', icon: FontAwesomeIcons.circle);
  static const FineArt =
      StudentMenu(text: 'Fine Art', icon: FontAwesomeIcons.checkCircle);
  static const CivicEducation =
      StudentMenu(text: 'Civic Education', icon: FontAwesomeIcons.circle);
}

class SeniorSecondaryScienceItems {
  static const List<StudentMenu> SenSecScienceList = [
    Maths,
    Chemistry,
    Geogrephy,
    Biology,
    Physics,
    FurtherMaths
  ];

  static const Maths =
      StudentMenu(text: 'MATHS', icon: FontAwesomeIcons.checkCircle);
  static const Chemistry =
      StudentMenu(text: 'Chemistry', icon: FontAwesomeIcons.circle);
  static const Geogrephy =
      StudentMenu(text: 'Geogrephy', icon: FontAwesomeIcons.checkCircle);
  static const Biology =
      StudentMenu(text: 'Biology', icon: FontAwesomeIcons.circle);
  static const Physics =
      StudentMenu(text: 'Physics', icon: FontAwesomeIcons.checkCircle);
  static const FurtherMaths =
      StudentMenu(text: 'Futher Maths', icon: FontAwesomeIcons.circle);
}

class SeniorSecondaryArtsItems {
  static const List<StudentMenu> SenSecArtsList = [
    Maths,
    Economics,
    Commerce,
    Government,
    Literature,
    English
  ];

  static const Maths =
      StudentMenu(text: 'MATHS', icon: FontAwesomeIcons.checkCircle);
  static const Economics =
      StudentMenu(text: 'Economics', icon: FontAwesomeIcons.circle);
  static const Commerce =
      StudentMenu(text: 'Commerce', icon: FontAwesomeIcons.checkCircle);
  static const Government =
      StudentMenu(text: 'Government', icon: FontAwesomeIcons.circle);
  static const Literature =
      StudentMenu(text: 'Literature', icon: FontAwesomeIcons.checkCircle);
  static const English =
      StudentMenu(text: 'English', icon: FontAwesomeIcons.circle);
}
