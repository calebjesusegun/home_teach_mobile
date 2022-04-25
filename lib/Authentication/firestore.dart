// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:home_teach_mobile/utils/failure.dart';

// class Database{
  
//   CollectionReference studentUsers = FirebaseFirestore.instance.collection('studentUsers');

//   Future createStudentUser(String? name, String? email, String? phoneNumber) async{
//     return await studentUsers.add({
//       'name': name,
//       'email': email,
//       'phoneNumber': phoneNumber,
//     });
//   }

//   CollectionReference teacherUsers = FirebaseFirestore.instance.collection('teacherUsers');

//   Future createTeacherUser(String? name, String? email, String? phoneNumber) async{
//     try{
//     return await studentUsers.add({
//       'name': name,
//       'email': email,
//       'phoneNumber': phoneNumber,
//     });
//     } on FirebaseException{
//       throw Failure(message: "Failed to Create the User");
//     } on SocketException{
//       throw Failure(message: "Internet Connection Failed");
//     } catch(e){
//       throw Failure(message: e.toString(),);
//     }
//   }
// }