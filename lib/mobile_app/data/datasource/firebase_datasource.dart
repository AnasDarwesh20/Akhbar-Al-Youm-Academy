import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class BaseFirebaseDataSource {
  Future<StudentModel> getStudentData();

  Future<void> registerStudent(StudentModel model, context);
  Future<void> loginStudent(StudentModel model, context);

  Future<void> newLectureAttend({
    required StudentModel model,
    required SubjectModel subject,
  });
}

class FirebaseDataSource extends BaseFirebaseDataSource {
  StudentModel? data;

  @override
  Future<StudentModel> getStudentData() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('students')
        .doc('YNGT4CxYmIzcpt3OYGjF')
        .get();

    if (snapshot.exists) {
      return StudentModel.fromFireStore(snapshot.data()!);
    } else {
      throw Exception('student not found');
    }
  }

  @override
  Future<void> registerStudent(StudentModel model, context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: model.email,
        password: model.id.toString(),
      );
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Error',
          desc: 'The password provided is too weak.',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
        ).show();
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Error',
          desc: 'The account already exists for that email.',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
        ).show();
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<void> newLectureAttend(
      {required StudentModel model, required SubjectModel subject}) async {
    FirebaseFirestore.instance
        .collection('students')
        .doc('computer science')
        .collection('year1')
        .doc()
        .collection('attendance')
        .doc('math')
        .collection('lectures')
        .add(model.toMap())
        .then((value) {})
        .catchError((error) {});
  }

  @override
  Future<void> loginStudent(StudentModel model, context) async {

  }
}
