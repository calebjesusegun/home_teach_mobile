//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_teach_mobile/Screens/Admin/admin_homepage.dart';
import 'package:home_teach_mobile/Screens/Admin/admin_sign_in.dart';
import 'package:home_teach_mobile/Screens/Lesson/change_lesson_address.dart';
import 'package:home_teach_mobile/Screens/Payment/booking_requests.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/aboutpage.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/contactus.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/privacypolicy.dart';
import 'package:home_teach_mobile/Screens/Static%20Page%20Screens/termsofuse.dart';
import 'package:home_teach_mobile/Screens/Student/account_created_successfully.dart';
import 'package:home_teach_mobile/Screens/Student/passwordreset.dart';
import 'package:home_teach_mobile/Screens/Student/signin_student.dart';
import 'package:home_teach_mobile/Screens/Student/signup_student.dart';
import 'package:home_teach_mobile/Screens/Student/stud_banktransfer.dart';
import 'package:home_teach_mobile/Screens/Student/stud_homepage.dart';
import 'package:home_teach_mobile/Screens/Student/student_profile.dart';
import 'package:home_teach_mobile/Screens/Student/studentpayment.dart';
import 'package:home_teach_mobile/Screens/Student/studentsubject.dart';
import 'package:home_teach_mobile/Screens/Student/term_of_use_student.dart';
import 'package:home_teach_mobile/Screens/Teacher/Parent.dart';
import 'package:home_teach_mobile/Screens/Teacher/account_successful.dart';
import 'package:home_teach_mobile/Screens/Teacher/signin_teacher.dart';
import 'package:home_teach_mobile/Screens/Teacher/signup_teacher.dart';
import 'package:home_teach_mobile/Screens/Teacher/signupemailcomfirm.dart';
import 'package:home_teach_mobile/Screens/Teacher/teacherHomePage.dart';
import 'package:home_teach_mobile/Screens/Teacher/teacher_profile.dart';
import 'package:home_teach_mobile/Screens/Teacher/teacher_schedule.dart';
import 'package:home_teach_mobile/Screens/Teacher/teacherssubject.dart';
import 'package:home_teach_mobile/Screens/Teacher/terms_of_use_teacher.dart';
import 'package:home_teach_mobile/Screens/onboarding/info_page.dart';
import 'package:home_teach_mobile/Screens/splash/splashscreen.dart';
import 'Screens/Teacher/teachepayment.dart';


void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // ensure a particular method or fuction is carried out as soon as app launches
  //sets the app orientation or display to PotraitUp. app won't respond to landscape mode
  //await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeTeach Mobile App',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //DECLARE ALL NAVIGATION ROUTE HERE
      //MOVE TO THE NEXT SCREEN USING NAVIGATION.PUSHNAMED(context, '/NAME OF ROUTE')
      routes: {
        '/': (context) => SplashScreen(),
        '/teacherprofile': (context) => TeacherProfile(),
        '/studentprofile': (context) => StudentProfile(),
        '/teacherhomepage': (context) => TeacherHomePage(),
        '/studenthomepage': (context) => StudHomePage(),
        '/signup': (context) => signUp_Student_Parent(),
        '/termsteacher': (context) => TermsTeacher(),
        '/termsstudent': (context) => TermsStudent(),
        '/signupemail': (context) => EmailComfirm(),
        '/resetpassword': (context) => RestPassword(),
        '/account': (context) => AccountCreated(),
        '/booking': (context) => BookingRequest(),
        '/changeaddress': (context) => ChangeLessonAddress(),
        '/infopage': (context) => OnboardingScreen(),
        '/teacherpayment': (context) => TeacgerPayment(),
        '/aboutus': (context) => AboutUs(),
        '/teachersignin': (context) => TeacherSignIn(),
        '/teachersignup': (context) => TeacherSignUp(),
        '/teacherschedule': (context) => TeacherSchedule(),
        '/studentsignin': (context) => StudentSignIn(),
        '/studentsignup': (context) => StudentSignUp(),
        '/studentbanktransfer': (context) => StudentBankTransfer(),
        '/adminhomepage': (context) => AdminHomePage(),
        '/adminsignin': (context) => AdminSignIn(),
        '/contactus': (context) => ContactUs(),
        '/privacypolicy': (context) => PrivacyPolicy(),
        '/termsofuse': (context) => TermsOfUse(),
        '/studentpayment': (context) => StudentPayment(),
        '/selectStudents': (context) => StudentSubjects(),
        '/selectTeachers': (context) => TeachersSubjectSelected(),
        '/accountCreated': (context) => AccountCreated(),
        '/teacheraccountCreated': (context) => AccountCreatedTeacher(),

      },
    );
  }
} 
