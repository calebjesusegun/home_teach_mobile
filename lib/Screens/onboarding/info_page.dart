import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_teach_mobile/Constant/styles.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive
            ? _currentPage == 1
                ? Colors.red
                : Colors.green
            : _currentPage == 3
                ? Colors.grey
                : null,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, '/studentsignin'),
                      child: _currentPage == _numPages - 1
                          ? SizedBox()
                          : Text('Skip',
                              style: textred12.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500))),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/HomeTeachLogo.png'))),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      PageDetails(
                          role: 'Student?',
                          description: 'Learn Anywhere',
                          img: 'student',
                          subtitle: onboardingText1),
                      PageDetails(
                          description: 'Teach on the Go',
                          role: 'Teacher?',
                          img: 'teacher',
                          subtitle: onboardingText2),
                      PageDetails(
                          description: 'Enroll your Child',
                          role: 'Parent?',
                          img: 'parent',
                          subtitle: onboardingText3)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: MediaQuery.of(context).size.height * .13,
              width: double.infinity,
              color: Colors.green,
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushReplacementNamed(context, '/studentsignin'),
                child: Center(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}

class PageDetails extends StatelessWidget {
  final String role;
  final String description;
  final String img;
  final String subtitle;
  const PageDetails({
    required this.description,
    required this.role,
    required this.img,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5),
          Container(
              alignment: Alignment.center,
              child: Text(
                role,
                style: textblack25.copyWith(fontWeight: FontWeight.w600),
              )),
          Center(
            child: Image(
              image: AssetImage(
                'assets/images/$img.png',
              ),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          Container(
              alignment: Alignment.center,
              child: Text(
                description,
                style: textblack25.copyWith(fontWeight: FontWeight.w700),
              )),
          SizedBox(height: 20.0),
          Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
