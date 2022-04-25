import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_teach_mobile/Constant/styles.dart';
import 'package:home_teach_mobile/Screens/Student/stud_dashboard.dart';
import 'package:home_teach_mobile/Screens/Student/student_profile.dart';
import 'package:home_teach_mobile/Screens/Student/student_search.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class StudHomePage extends StatelessWidget {
  const StudHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      backgroundColor: Color(0xffe5e5e5),
      confineInSafeArea: true,
      resizeToAvoidBottomInset: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style13,
    );
  }
}

//SCREENS OF EACH NAVIGATION
List<Widget> _buildScreens() {
  return [
    StudDashboard(),
    Container(),
    StudentProfile(),
    Center(
      child: Icon(Icons.notifications_active, size: 50),
    ),
    Container()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.systemGrey,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColorPrimary: CupertinoColors.systemGrey,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        onPressed: (ctx) => {pushNewScreen(context, screen: StudSearch())}),
    PersistentBottomNavBarItem(
      icon: Icon(
        CupertinoIcons.person_circle_fill,
        color: Colors.black,
        size: 35,
      ),
      title: ("Account"),
      activeColorPrimary: CupertinoColors.systemGrey,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.notifications),
      title: ("Notification"),
      activeColorPrimary: CupertinoColors.systemGrey,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.menu),
        title: ("Menu"),
        activeColorPrimary: CupertinoColors.systemGrey,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        onPressed: (ctxt) {
          _showMenuModal(context);
        }),
  ];
}

//SHOW POPUP MENU ON MENU ICON PRESS. DOESN'T SHOW ABOVE THE NAVIGATION BAR
Future<dynamic> _showMenuModal(context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  return showModalBottomSheet<void>(
      //useRootNavigator: true,
      backgroundColor: Colors.transparent,
      context: context,
      isDismissible: true,
      builder: (context) => GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: height * .32,
              width: width,
              color: Colors.transparent,
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: width * .55,
                  color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Profile',
                                style: textblack18,
                              )),
                        ),
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              //height: 50,
                              child: Text(
                                'Account',
                                style: textblack18,
                              )),
                        ),
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              //height: 50,
                              child: Text(
                                'Payment Method',
                                style: textblack18,
                              )),
                        ),
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              //height: 50,
                              child: Text(
                                'Settings',
                                style: textblack18,
                              )),
                        ),
                        InkWell(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.red,
                              width: width,
                              child: Text(
                                'LOGOUT',
                                style: textblack18,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ));
}
